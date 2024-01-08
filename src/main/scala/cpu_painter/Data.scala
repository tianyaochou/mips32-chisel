package MultiCycle

import chisel3._

object ControlSignal {
  def WordSize = 4.S

  def RDSel = true.B
  def RTSel = false.B

  def RegRead1Sel = true.B
  def PCRegSel = false.B

  def NextPCSel = 0.U
  def JumpAddrSel = 1.U
  def BeqJumpSel = 2.U

  def MemDataSel = true.B
  def ALUOutSel = false.B

  def InstructionSel = true.B
  def DataSel = false.B

  def RegRead2Sel = 0.U
  def PCPlusSel = 1.U
  def ImmediateSel = 2.U
  def BeqOffsetSel = 3.U

  def BeqSel = true.B
  def BneSel = false.B

  def SignedExtendSel = true.B
  def ZeroExtendSel = false.B

  def WordSel = 0.U
  def HalfWordSel = 1.U
}

object OpCode {
  def SPECIAL = "b000000".U
  def ADD = SPECIAL; def SUB = SPECIAL; def AND = SPECIAL
  def OR = SPECIAL; def XOR = SPECIAL
  def NOR = SPECIAL; def SLT = SPECIAL
  def ANDI = "b001100".U
  def ADDI = "b001000".U
  def ORI = "b001101".U
  def XORI = "b001110".U
  def SLTI = "b001010".U
  def LW = "b100011".U
  def LH = "b100001".U
  def SW = "b101011".U
  def SH = "b101001".U
  def BEQ = "b000100".U
  def BNE = "b000101".U
  def J = "b000010".U
}

object Funct {
  def ANDFUN = "b100100".U; def ORFUNC = "b100101".U
  def ADDFUNC = "b100000".U; def SUBFUNC = "b100010".U
  def XORFUNC = "b100110".U; def NORFUNC = "b100111".U
  def SLTFUNC = "b101010".U
}
