package DataPath

import chisel3._

class RegisterFile extends Module {
  val io = IO(new Bundle {
    val ReadAddr1 = Input(UInt(5.W))
    val ReadAddr2 = Input(UInt(5.W))
    val WriteEnable = Input(Bool())
    val WriteAddr = Input(UInt(5.W))
    val WriteData = Input(UInt(32.W))
    val ReadData1 = Output(UInt(32.W))
    val ReadData2 = Output(UInt(32.W))

    val _DebugAddr = Input(UInt(5.W))
    val _DebugData = Output(UInt(32.W))
  })

  val RegFile = RegInit(VecInit(Seq.fill(32)(0.U(32.W))))

  when(io.WriteEnable) {
    when(io.WriteAddr =/= 0.U) {
      RegFile(io.WriteAddr) := io.WriteData
    }
  }

  when(io.ReadAddr1 =/= 0.U) {
    io.ReadData1 := RegFile(io.ReadAddr1)
  } .otherwise {
    io.ReadData1 := 0.U
  }

  when(io.ReadAddr2 =/= 0.U) {
    io.ReadData2 := RegFile(io.ReadAddr2)
  } .otherwise {
    io.ReadData2 := 0.U
  }

  //Debug
  io._DebugData := RegFile(io._DebugAddr)
}

//object RegisterFileDriver extends App {
//  chisel3.Driver.execute(args, () => new RegisterFile)
//}
