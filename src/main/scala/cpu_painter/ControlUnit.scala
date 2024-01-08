package ControlUnit

import chisel3._
import chisel3.util._
import MultiCycle.ControlSignal._
import MultiCycle.OpCode._

class ControlUnit extends Module {
  val io = IO(new Bundle {
    val Zero = Input(Bool())
    val OpCode = Input(UInt(6.W))
    val PCWrite = Output(Bool())
    val PCWriteCond = Output(Bool())
    val PCSrc = Output(UInt(2.W))
    val IRWrite = Output(Bool())
    val InstructionOrData = Output(Bool())
    val RegDst = Output(Bool())
//    val MemRead = Output(Bool())
    val MemOrALUOut = Output(Bool())
    val MemWrite = Output(Bool())
    val ALUOp = Output(UInt(2.W))
    val ALUSrc1 = Output(Bool())
    val ALUSrc2 = Output(UInt(2.W))
    val RegWrite = Output(Bool())
    val BeqOrBne = Output(Bool())
    val SignedOrZero = Output(Bool())
    val SizeSel = Output(UInt(1.W))
  })

  def START = 0.U(3.W); def IF = 1.U; def DECODE = 2.U
  def EXE = 3.U; def MEM = 4.U; def WRT = 5.U;

  io.PCWrite := false.B
  io.PCWriteCond := false.B
  io.PCSrc := NextPCSel
  io.IRWrite := false.B
  io.InstructionOrData := InstructionSel

  val NextState = Wire(UInt(3.W))
  val State = RegInit(START)
  State := NextState

  //Next State
  NextState := MuxLookup(State, START, Array(
    START -> IF, IF -> DECODE, DECODE -> EXE, EXE -> MuxLookup(io.OpCode, MEM, Array(
      BEQ -> IF, BNE -> IF, J -> IF
        )), MEM -> MuxLookup(io.OpCode, WRT, Array(
          SPECIAL -> IF, ANDI -> IF, ADDI -> IF, ORI -> IF, XORI -> IF, SLTI -> IF, SW -> IF, SH -> IF
    )), WRT -> IF
  ))

  //Control Signal
  {
    io.PCWrite := false.B
    io.PCWriteCond := false.B
    io.PCSrc := NextPCSel
    io.IRWrite := false.B
    io.InstructionOrData := InstructionSel
    io.RegDst := RDSel
    io.MemOrALUOut := ALUOutSel
    io.MemWrite := false.B
    io.ALUOp := "b00".U
    io.ALUSrc1 := PCRegSel
    io.ALUSrc2 := ImmediateSel
    io.RegWrite := false.B
    io.BeqOrBne := BeqSel
    io.SignedOrZero := true.B
    io.SizeSel := WordSel

    switch (State) {
      is (IF) {
        io.PCWrite := true.B
        io.PCSrc := NextPCSel
        io.InstructionOrData := InstructionSel
        io.IRWrite := true.B
      }
      is (DECODE) {
        io.ALUOp := "b00".U
        io.ALUSrc1 := PCRegSel
        io.ALUSrc2 := BeqOffsetSel
        io.SignedOrZero := SignedExtendSel
      }
      is (EXE) {
        switch (io.OpCode) {
          is (SPECIAL) {
            io.ALUOp := "b10".U
            io.ALUSrc1 := RegRead1Sel
            io.ALUSrc2 := RegRead2Sel
          }
          is (LW) {
            io.ALUOp := "b00".U
            io.ALUSrc1 := RegRead1Sel
            io.ALUSrc2 := ImmediateSel
            io.SizeSel := WordSel
          }
          is (LH) {
            io.ALUOp := "b00".U
            io.ALUSrc1 := RegRead1Sel
            io.ALUSrc2 := ImmediateSel
            io.SizeSel := HalfWordSel
          }
          is (SW) {
            io.ALUOp := "b00".U
            io.ALUSrc1 := RegRead1Sel
            io.ALUSrc2 := ImmediateSel
            io.SizeSel := WordSel
          }
          is (SH) {
            io.ALUOp := "b00".U
            io.ALUSrc1 := RegRead1Sel
            io.ALUSrc2 := ImmediateSel
            io.SizeSel := HalfWordSel
          }
          is (BEQ) {
            io.BeqOrBne := BeqSel
            io.ALUOp := "b01".U
            io.PCWriteCond := true.B
            io.PCSrc := BeqJumpSel
            io.ALUSrc1 := RegRead1Sel
            io.ALUSrc2 := RegRead2Sel
          }
          is (BNE) {
            io.BeqOrBne := BneSel
            io.ALUOp := "b01".U
            io.PCWriteCond := true.B
            io.PCSrc := BeqJumpSel
            io.ALUSrc1 := RegRead1Sel
            io.ALUSrc2 := RegRead2Sel
          }
          is (J) {
            io.PCWrite := true.B
            io.PCSrc := JumpAddrSel
          }
          is (ADDI) {
            io.ALUOp := "b11".U
            io.ALUSrc1 := RegRead1Sel
            io.ALUSrc2 := ImmediateSel
            io.SignedOrZero := SignedExtendSel
          }
          is (ANDI) {
            io.ALUOp := "b11".U
            io.ALUSrc1 := RegRead1Sel
            io.ALUSrc2 := ImmediateSel
            io.SignedOrZero := ZeroExtendSel
          }
          is (ORI) {
            io.ALUOp := "b11".U
            io.ALUSrc1 := RegRead1Sel
            io.ALUSrc2 := ImmediateSel
            io.SignedOrZero := ZeroExtendSel
          }
          is (XORI) {
            io.ALUOp := "b11".U
            io.ALUSrc1 := RegRead1Sel
            io.ALUSrc2 := ImmediateSel
            io.SignedOrZero := ZeroExtendSel
          }
          is (SLTI) {
            io.ALUOp := "b11".U
            io.ALUSrc1 := RegRead1Sel
            io.ALUSrc2 := ImmediateSel
            io.SignedOrZero := SignedExtendSel
          }
        }
      }
      is (MEM) {
        switch (io.OpCode) {
          is (SPECIAL) {
            io.RegWrite := true.B
            io.RegDst := RDSel
            io.MemOrALUOut := ALUOutSel
          }
          is (SW) {
            io.InstructionOrData := DataSel
            io.MemWrite := true.B
            io.SizeSel := WordSel
          }
          is (SH) {
            io.InstructionOrData := DataSel
            io.MemWrite := true.B
            io.SizeSel := HalfWordSel
          }
          is (LW) {
            io.InstructionOrData := DataSel
            io.MemOrALUOut := MemDataSel
            io.SizeSel := WordSel
          }
          is (LH) {
            io.InstructionOrData := DataSel
            io.MemOrALUOut := MemDataSel
            io.SizeSel := HalfWordSel
          }
          is (ADDI) {
            io.RegWrite := true.B
            io.RegDst := ALUOutSel
          }
          is (ANDI) {
            io.RegWrite := true.B
            io.RegDst := ALUOutSel
          }
          is (ORI) {
            io.RegWrite := true.B
            io.RegDst := ALUOutSel
          }
          is (XORI) {
            io.RegWrite := true.B
            io.RegDst := ALUOutSel
          }
          is (SLTI) {
            io.RegWrite := true.B
            io.RegDst := ALUOutSel
          }
        }
      }
      is (WRT) {
        io.MemOrALUOut := MemDataSel
        io.RegWrite := true.B
        io.RegDst := RTSel
      }
    }
  }
}
