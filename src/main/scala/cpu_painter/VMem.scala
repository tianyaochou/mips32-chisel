package DataPath

import chisel3._

class VMem extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(32.W))
    val dpra = Input(UInt(32.W))
    val d = Input(UInt(32.W))
    val we = Input(Bool())
    val spo = Output(UInt(32.W))
    val dpo = Output(UInt(32.W))
  })

  val mem = Mem(8192, UInt(32.W))

  when(io.we) {
    mem.write(io.a, io.d)
  }

  io.spo := mem.read(io.a)
  io.dpo := mem.read(io.dpra(9,2))
}
