package DataPath

import chisel3._
import chisel3.util._

class ALU extends Module {
  val io = IO(new Bundle {
    val ALUCtl = Input(UInt(4.W))
    val ALUOp1 = Input(SInt(32.W))
    val ALUOp2 = Input(SInt(32.W))
    val ALUOut = Output(SInt(32.W))
    val Zero = Output(Bool())
  })

  def AND = 0.U; def OR = 1.U;def ADD = 2.U; def SUB = 6.U; def SLT = 7.U
  def XOR = 10.U; def NOR = 12.U

  val Op1 = io.ALUOp1
  val Op2 = io.ALUOp2

  io.ALUOut := MuxLookup(io.ALUCtl, 0.S, Array(
    AND -> (Op1 & Op2), OR -> (Op1 | Op2), ADD -> (Op1 + Op2),
    SUB -> (Op1 - Op2), SLT -> Cat(0.S(31.W), Op1 < Op2).asSInt,
    XOR -> (Op1 ^ Op2), NOR -> ~(Op1 | Op2)
  ))

  io.Zero := io.ALUOut === 0.S
}

//object ALUDriver extends App {
//  chisel3.Driver.execute(args, () => new ALU)
//}
