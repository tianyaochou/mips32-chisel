package DataPath

import chisel3._

class Memory extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(32.W))
    val d = Input(UInt(32.W))
    val dpra = Input(UInt(32.W))
    val we = Input(Bool())
    val spo = Output(UInt(32.W))
    val dpo = Output(UInt(32.W))
  })

  val mem = Mem(256, UInt(32.W))

  when(io.we) {
    mem.write(io.a(9,2), io.d)
  }

  io.spo := mem.read(io.a(9,2))
  io.dpo := mem.read(io.dpra(9,2))
}
