package DataPath

import chisel3._

class SignedExtend extends Module {
  val io = IO(new Bundle {
    val in = Input(SInt(16.W))
    val out = Output(SInt(32.W))
  })

  io.out := io.in
}
