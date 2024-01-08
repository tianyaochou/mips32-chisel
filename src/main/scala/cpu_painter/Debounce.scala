package HardwareDriver

import chisel3._

class Debounce extends Module {
  val io = IO(new Bundle {
    val in = Input(Bool())
    val out = Output(Bool())
  })
  val d1 = RegNext(io.in)
  val d2 = RegNext(d1)

  io.out := d1 & (~d2)
}
