package ControlUnit

import chisel3._
import chisel3.util._
import MultiCycle.Funct._
import MultiCycle.OpCode._

class ALUControl extends Module {
  val io = IO(new Bundle {
    val ALUOp = Input(UInt(2.W))
    val OpCode = Input(UInt(6.W))
    val Funct = Input(UInt(6.W))
    val ALUCtl = Output(UInt(4.W))
  })

  def ANDSig = 0.U; def ORSig = 1.U; def ADDSig = 2.U; def SUBSig = 6.U; def SLTSig = 7.U
  def XORSig = 10.U; def NORSig = 12.U

  io.ALUCtl := MuxLookup(io.ALUOp, ADDSig, Array(
    "b00".U -> ADDSig, "b01".U -> SUBSig,
    "b10".U -> MuxLookup(io.Funct, ADDSig, Array(
      ADDFUNC -> ADDSig, SUBFUNC -> SUBSig,
      ANDFUN -> ANDSig, ORFUNC -> ORSig,
      SLTFUNC -> SLTSig, XORFUNC -> XORSig,
      NORFUNC -> NORSig
    )),
    "b11".U -> MuxLookup(io.OpCode, ADD, Array(
      ANDI -> ANDSig, ORI -> ORSig, ADDI -> ADDSig, SLTI -> SLTSig, XORI -> XORSig
    ))
  ))
}

//object ALUControlDriver extends App {
//  chisel3.Driver.execute(args, () => new ALUControl)
//}
