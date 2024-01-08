package HardwareDriver
import chisel3._
import chisel3.util._
import chisel3.experimental._
//import Vga800x600

class DCU extends Module {
  val io = IO(new Bundle {
    val vdata = Input(UInt(12.W))
    val vaddr = Output(UInt(16.W))
    val r = Output(UInt(4.W))
    val g = Output(UInt(4.W))
    val b = Output(UInt(4.W))
    val hs = Output(Bool())
    val vs = Output(Bool())
//    val x = Input(UInt(8.W))
//    val y = Input(UInt(8.W))
  })

  val vaddrReg = RegInit(0.U(16.W))
  val Vga = Module(new Vga800x600())
  io.r := Vga.io.r
  io.g := Vga.io.g
  io.b := Vga.io.b
  io.hs := Vga.io.hs
  io.vs := Vga.io.vs
  io.vaddr := vaddrReg

  when(Vga.io.px <= 336.U | Vga.io.px >= 464.U| Vga.io.py <= 236.U | Vga.io.py >= 364.U) {
    Vga.io.vdata := 0.U
  }
    //.elsewhen (((Vga.io.py === io.y + 172.U) & (Vga.io.px <= io.x + 272.U + 1.U | Vga.io.px >= io.x + 272.U - 1.U)) | ((Vga.io.px === io.x + 272.U) & (Vga.io.py <= io.y + 172.U + 1.U | Vga.io.px >= io.y + 172.U - 1.U))) {
    //Vga.io.vdata := 0.U
//}
  .otherwise {
    vaddrReg := Cat((Vga.io.py - 236.U)(6,0), (Vga.io.px - 336.U)(6,0))
    Vga.io.vdata := io.vdata
  }
}
