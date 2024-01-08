package HardwareDriver

import chisel3._
import chisel3.util._

class SegmentDisplay extends Module {
  val io = IO(new Bundle {
    val data = Input(Vec(8, UInt(4.W)))
    val en = Input(UInt(8.W))
    val seg = Output(UInt(7.W))
    val an = Output(UInt(8.W))
  })

  val anSig = RegInit("b10000000".U(8.W))
  anSig := Mux(anSig =/= "b00000001".U, anSig >> 1, "b10000000".U)
  val count = RegInit(7.U(3.W))
  count := count - 1.U

  io.seg := Mux(io.en(count) === 1.U, MuxLookup(io.data(count), "b1111111".U, Array(
    0.U -> "b1000000".U, 1.U -> "b1111001".U, 2.U -> "b0100100".U, 3.U -> "b0110000".U,
    4.U -> "b0011001".U, 5.U -> "b0010010".U, 6.U -> "b0000010".U, 7.U -> "b1111000".U,
    8.U -> "b0000000".U, 9.U -> "b0010000".U, 10.U -> "b0001000".U, 11.U -> "b0000011".U,
    12.U -> "b1000110".U, 13.U -> "b0100001".U, 14.U -> "b0000110".U, 15.U -> "b0001110".U
  )), "b1111111".U)

  io.an := ~anSig
}
