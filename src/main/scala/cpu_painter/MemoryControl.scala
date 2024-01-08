package DataPath

import chisel3._
import chisel3.util._
import MultiCycle.ControlSignal._

class MemoryControl extends Module {
  val io = IO(new Bundle {
    val Addr = Input(UInt(32.W))
    val WriteData = Input(UInt(32.W))
    val WE = Input(Bool())
    val SizeSel = Input(UInt(1.W))
    val Switches = Input(UInt(12.W))
    val Buttons = Input(UInt(4.W))
    val Paint = Input(Bool())
    val ReadData = Output(UInt(32.W))
    val VAddr = Input(UInt(16.W))
    val VData = Output(UInt(12.W))
    val _DebugAddr = Input(UInt(32.W))
    val _DebugData = Output(UInt(32.W))
  })

  val MainMemory = Module(new Memory)
  val VMem = Module(new VMem)

  val ReadWord = Wire(UInt(32.W))
  val WordAddr = io.Addr(31,2)
  val WriteWord = Wire(UInt(32.W))
  MainMemory.io.we := false.B
  VMem.io.we := false.B
  MainMemory.io.a := WordAddr
  VMem.io.a := WordAddr - 256.U
  MainMemory.io.d := WriteWord
  VMem.io.d := WriteWord

  VMem.io.dpra := io.VAddr(15,1)
  io.VData := Mux(io.VAddr(0),VMem.io.dpo(27,16), VMem.io.dpo(11,0))

  val Switches = RegInit(0.U(32.W))
  Switches := RegNext(io.Switches)

  val Buttons = RegInit(0.U(32.W))
  when (io.Buttons.orR) {
    Buttons := io.Buttons
  }

  val Paint = RegInit(0.U(32.W))
  Paint := RegNext(io.Paint)

  when (WordAddr === "hfffffffc".U(31,2)) {
    ReadWord := Switches
    when (io.WE) {
      Switches := io.WriteData
    }
  } .elsewhen (WordAddr === "hfffffff8".U(31,2)) {
    ReadWord := Buttons
    when (io.WE) {
      Buttons := io.WriteData
    }
  } .elsewhen (WordAddr === "hfffffff4".U(31,2)) {
    ReadWord := Paint
    when (io.WE) {
      Paint := io.WriteData
    }
  } .elsewhen (WordAddr < 256.U) {
    MainMemory.io.we := io.WE
    ReadWord := MainMemory.io.spo
  } .otherwise {
    VMem.io.we := io.WE
    ReadWord := VMem.io.spo
  }

  when (io.SizeSel === HalfWordSel) {
    io.ReadData := Mux(io.Addr(1),ReadWord(31,16),ReadWord(15,0))
    WriteWord := Mux(io.Addr(1),Cat(io.WriteData(15,0), ReadWord(15,0)), Cat(ReadWord(31,16), io.WriteData(15,0)))
  } .otherwise {
    io.ReadData := ReadWord
    WriteWord := io.WriteData
  }

  MainMemory.io.dpra := io._DebugAddr
  io._DebugData := MainMemory.io.dpo
}
