package HardwareDriver

import chisel3._

class Vga800x600 extends Module {
  val io = IO(new Bundle {
    val px = Output(UInt(11.W))
    val py = Output(UInt(10.W))
    val vdata = Input(UInt(12.W))
    val hs = Output(Bool())
    val vs = Output(Bool())
    val r = Output(UInt(4.W))
    val g = Output(UInt(4.W))
    val b = Output(UInt(4.W))
  })

  val xReg = RegInit(0.U(11.W))
  val yReg = RegInit(0.U(10.W))
  val hsReg = RegInit(true.B)
  val vsReg = RegInit(true.B)

  xReg := xReg + 1.U
  when (xReg === 1040.U) {
    yReg := yReg + 1.U
    xReg := 0.U
  }
  when (yReg === 666.U) {
    yReg := 0.U
  }
  when (xReg === 856.U) {
    hsReg := false.B
  }
  when (xReg === 976.U) {
    hsReg := true.B
  }
  when (yReg === 637.U) {
    vsReg := false.B
  }
  when (yReg === 643.U) {
    vsReg := true.B
  }

  io.px := xReg
  io.py := yReg
  io.r := io.vdata(11,8)
  io.g := io.vdata(7,4)
  io.b := io.vdata(3,0)
  io.hs := hsReg
  io.vs := vsReg
}
