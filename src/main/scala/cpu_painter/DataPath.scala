package DataPath

import chisel3._
import chisel3.util._
import chisel3.experimental._
import MultiCycle.ControlSignal._
import HardwareDriver.DCU

class DataPath extends Module {
  val io = IO(new Bundle {
    val PCWrite = Input(Bool())
    val PCWriteCond = Input(Bool())
    val PCSrc = Input(UInt(2.W))
    val IRWrite = Input(Bool())
    val InstructionOrData = Input(Bool())
    val RegDst = Input(Bool())
//    val MemRead = Input(Bool())
    val MemOrALUOut = Input(Bool())
    val MemWrite = Input(Bool())
    val ALUSrc1 = Input(Bool())
    val ALUSrc2 = Input(UInt(2.W))
    val ALUCtl = Input(UInt(4.W))
    val RegWrite = Input(Bool())
    val BeqOrBne = Input(Bool())
    val SignedOrZero = Input(Bool())
    val SizeSel = Input(UInt(1.W))
    val Switches = Input(UInt(12.W))
    val Buttons = Input(UInt(4.W))
    val Paint = Input(Bool())
    val Zero = Output(Bool())
    val OpCode = Output(UInt(6.W))
    val Funct = Output(UInt(6.W))
    val VGAClock = Input(Clock())
    val hs = Output(Bool())
    val vs = Output(Bool())
    val r = Output(UInt(4.W))
    val g = Output(UInt(4.W))
    val b = Output(UInt(4.W))

    val _DebugAddr = Input(UInt(12.W))
    val _DebugRegData = Output(UInt(32.W))
    val _DebugMemData = Output(UInt(32.W))
    val _PC = Output(UInt(32.W))
  })

  val RegFile = Module(new RegisterFile)
  val ALU = Module(new ALU)
  val SignedExtend = Module(new SignedExtend)
  val Memory = Module(new MemoryControl)

  val PCReg = RegInit(0.U(32.W))
  val RegRead1Reg = RegInit(0.U(32.W))
  val RegRead2Reg = RegInit(0.U(32.W))

  //ALUOut Wiring
  val ALUOut = RegInit(0.S(32.W))
  ALUOut := ALU.io.ALUOut

  //Mem Wiring
  val MemAddr = Mux(io.InstructionOrData, PCReg, ALUOut.asUInt)
  Memory.io.Addr := MemAddr
  Memory.io.WE := io.MemWrite
  Memory.io.WriteData := RegRead2Reg
  Memory.io.SizeSel := io.SizeSel
  val MemDataReg = RegNext(Memory.io.ReadData)

  //RegReadReg Wiring
  RegRead1Reg := RegFile.io.ReadData1
  RegRead2Reg := RegFile.io.ReadData2

  //Instruction Wiring
  val InstructionReg = RegInit(0.U(32.W))
  val OpCode = InstructionReg(31, 26)
  val RS = InstructionReg(25, 21)
  val RT = InstructionReg(20, 16)
  val RD = InstructionReg(15, 11)
  val Immediate = InstructionReg(15, 0)
  val Funct = InstructionReg(5, 0)
  val JumpAddr = InstructionReg(25, 0)
  when(io.IRWrite) { InstructionReg := Memory.io.ReadData }

  //BeqOffset Wiring
  val BeqOffset = SignedExtend.io.out << 2

  //PCReg Wiring
  val PCWriteEnable = (io.PCWriteCond & Mux(io.BeqOrBne, ALU.io.Zero, ~ALU.io.Zero)) | io.PCWrite
  when (PCWriteEnable) {
    PCReg := MuxLookup(io.PCSrc, 0.U, Array(
      NextPCSel -> (PCReg + 4.U), BeqJumpSel -> ALUOut.asUInt,
      JumpAddrSel -> Cat(PCReg(31,28), JumpAddr << 2)
  ))
  }

  //RegFile Wiring
  RegFile.io.ReadAddr1 := RS
  RegFile.io.ReadAddr2 := RT
  RegFile.io.WriteAddr := MuxLookup(io.RegDst, 0.U, Array(
    RTSel -> RT, RDSel -> RD
  ))
  RegFile.io.WriteData := MuxLookup(io.MemOrALUOut, 0.U, Array(
    ALUOutSel -> ALUOut.asUInt, MemDataSel -> MemDataReg
  ))
  RegFile.io.WriteEnable := io.RegWrite

  //Signedextend Wiring
  SignedExtend.io.in := Immediate.asSInt

  //ALU Wiring
  ALU.io.ALUCtl := io.ALUCtl
  io.Zero := ALU.io.Zero
  ALU.io.ALUOp1 := MuxLookup(io.ALUSrc1, 0.S, Array(
    RegRead1Sel -> RegRead1Reg.asSInt, PCRegSel -> PCReg.asSInt
  ))
  ALU.io.ALUOp2 := MuxLookup(io.ALUSrc2, SignedExtend.io.out, Array(
    RegRead2Sel -> RegRead2Reg.asSInt, //PCPlusSel -> WordSize,
    ImmediateSel -> Mux(io.SignedOrZero, SignedExtend.io.out, Cat(0.U(16.W), Immediate).asSInt),
    BeqOffsetSel -> BeqOffset
  ))

  io.OpCode := OpCode
  io.Funct := Funct

  //Hardware
  Memory.io.Switches := io.Switches
  Memory.io.Buttons := io.Buttons
  Memory.io.Paint := io.Paint

  //VGA
  val DCU = withClock(io.VGAClock) { Module(new DCU) }
  DCU.io.vdata := Memory.io.VData
  Memory.io.VAddr := DCU.io.vaddr
  io.hs := DCU.io.hs
  io.vs := DCU.io.vs
  io.r := DCU.io.r
  io.g := DCU.io.g
  io.b := DCU.io.b

  //Debug Wiring
  Memory.io._DebugAddr := io._DebugAddr
  io._DebugMemData := Memory.io._DebugData
  RegFile.io._DebugAddr := io._DebugAddr
  io._DebugRegData := RegFile.io._DebugData
  io._PC := PCReg
}
