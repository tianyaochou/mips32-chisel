package MultiCycle

import chisel3._
import chisel3.util._
import chisel3.experimental._
import DataPath._
import ControlUnit._
import HardwareDriver._

class Top extends Module {
  val io = IO(new Bundle{
    val Reset = Input(Bool())
    val Switches = Input(UInt(12.W))
    val Paint = Input(Bool())
    val Buttons = Input(UInt(4.W))
    val RegOrMem = Input(Bool())
    val Step = Input(Bool())
    val Countinue = Input(Bool())
    val hs = Output(Bool())
    val vs = Output(Bool())
    val r = Output(UInt(4.W))
    val g = Output(UInt(4.W))
    val b = Output(UInt(4.W))
    val AN = Output(UInt(8.W))
    val SEG = Output(UInt(7.W))
    val PC = Output(UInt(16.W))
  })

  val counter1 = RegInit(0.U(32.W))
  counter1 := Mux(counter1 === 199999.U, 0.U, counter1 + 1.U)
  val clk500 = RegNext(counter1 <= 99999.U)

  val clk50M = RegInit(false.B)
  clk50M := ~clk50M

  val stable = Module(new Debounce)
  stable.io.in := io.Step
  val stable0 = Module(new Debounce)
  stable0.io.in := io.Buttons(0).toBool
  val stable1 = Module(new Debounce)
  stable1.io.in := io.Buttons(1).toBool
  val stable2 = Module(new Debounce)
  stable2.io.in := io.Buttons(2).toBool
  val stable3 = Module(new Debounce)
  stable3.io.in := io.Buttons(3).toBool

  val CPUClock = Wire(UInt(1.W))
  CPUClock := Mux(io.Countinue, Module.clock.asUInt, stable.io.out.asUInt)

  val DP = withClockAndReset(CPUClock.toBool.asClock, ~io.Reset) { Module(new DataPath) }
  val CU = withClockAndReset(CPUClock.toBool.asClock, ~io.Reset) { Module(new ControlUnit) }
  val ALUCU = withClockAndReset(CPUClock.toBool.asClock, ~io.Reset) { Module(new ALUControl) }
  val SegDisplay = withClock(clk500.asClock) { Module(new SegmentDisplay) }

  DP.io.Zero <> CU.io.Zero
  DP.io.OpCode <> CU.io.OpCode
  DP.io.PCWrite <> CU.io.PCWrite
  DP.io.PCWriteCond <> CU.io.PCWriteCond
  DP.io.PCSrc <> CU.io.PCSrc
  DP.io.IRWrite <> CU.io.IRWrite
  DP.io.InstructionOrData <> CU.io.InstructionOrData
  DP.io.RegDst <> CU.io.RegDst
  DP.io.MemOrALUOut <> CU.io.MemOrALUOut
  DP.io.MemWrite <> CU.io.MemWrite
  DP.io.ALUSrc1 <> CU.io.ALUSrc1
  DP.io.ALUSrc2 <> CU.io.ALUSrc2
  DP.io.RegWrite <> CU.io.RegWrite
  DP.io.BeqOrBne <> CU.io.BeqOrBne
  DP.io.SignedOrZero <> CU.io.SignedOrZero
  DP.io.SizeSel <> CU.io.SizeSel

  DP.io.ALUCtl <> ALUCU.io.ALUCtl
  DP.io.Funct <> ALUCU.io.Funct
  ALUCU.io.ALUOp <> CU.io.ALUOp
  DP.io.OpCode <> ALUCU.io.OpCode

  val RegData = DP.io._DebugRegData
  val MemData = DP.io._DebugMemData
  val Data = Mux(io.RegOrMem, RegData, MemData)
  DP.io._DebugAddr := io.Switches(9,0)

  for(i <- 0 until 8){
    SegDisplay.io.data(i) := Data(i * 4 + 3, i * 4)
  }
  SegDisplay.io.en := "b11111111".U
  io.AN := SegDisplay.io.an
  io.SEG := SegDisplay.io.seg

  io.PC := DP.io._PC(15,0)

  DP.io.VGAClock := clk50M.asClock
  io.hs := DP.io.hs
  io.vs := DP.io.vs
  io.r := DP.io.r
  io.g := DP.io.g
  io.b := DP.io.b

  DP.io.Switches := io.Switches
  DP.io.Buttons := Cat(stable3.io.out.asUInt, stable2.io.out.asUInt,
    stable1.io.out.asUInt, stable0.io.out.asUInt)
  DP.io.Paint := io.Paint
}

object TopDriver extends App {
  chisel3.Driver.execute(args, () => new Top)
}
