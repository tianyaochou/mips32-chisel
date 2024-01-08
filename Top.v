module Debounce( // @[:@3.2]
  input   clock, // @[:@4.4]
  input   io_in, // @[:@6.4]
  output  io_out // @[:@6.4]
);
  reg  d1; // @[Debounce.scala 10:19:@8.4]
  reg [31:0] _RAND_0;
  reg  d2; // @[Debounce.scala 11:19:@10.4]
  reg [31:0] _RAND_1;
  wire  _T_11; // @[Debounce.scala 13:19:@12.4]
  assign _T_11 = ~ d2; // @[Debounce.scala 13:19:@12.4]
  assign io_out = d1 & _T_11; // @[Debounce.scala 13:10:@14.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  d1 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  d2 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    d1 <= io_in;
    d2 <= d1;
  end
endmodule
module RegisterFile( // @[:@68.2]
  input         clock, // @[:@69.4]
  input         reset, // @[:@70.4]
  input  [4:0]  io_ReadAddr1, // @[:@71.4]
  input  [4:0]  io_ReadAddr2, // @[:@71.4]
  input         io_WriteEnable, // @[:@71.4]
  input  [4:0]  io_WriteAddr, // @[:@71.4]
  input  [31:0] io_WriteData, // @[:@71.4]
  output [31:0] io_ReadData1, // @[:@71.4]
  output [31:0] io_ReadData2, // @[:@71.4]
  input  [4:0]  io__DebugAddr, // @[:@71.4]
  output [31:0] io__DebugData // @[:@71.4]
);
  reg [31:0] RegFile_0; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_0;
  reg [31:0] RegFile_1; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_1;
  reg [31:0] RegFile_2; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_2;
  reg [31:0] RegFile_3; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_3;
  reg [31:0] RegFile_4; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_4;
  reg [31:0] RegFile_5; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_5;
  reg [31:0] RegFile_6; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_6;
  reg [31:0] RegFile_7; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_7;
  reg [31:0] RegFile_8; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_8;
  reg [31:0] RegFile_9; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_9;
  reg [31:0] RegFile_10; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_10;
  reg [31:0] RegFile_11; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_11;
  reg [31:0] RegFile_12; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_12;
  reg [31:0] RegFile_13; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_13;
  reg [31:0] RegFile_14; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_14;
  reg [31:0] RegFile_15; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_15;
  reg [31:0] RegFile_16; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_16;
  reg [31:0] RegFile_17; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_17;
  reg [31:0] RegFile_18; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_18;
  reg [31:0] RegFile_19; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_19;
  reg [31:0] RegFile_20; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_20;
  reg [31:0] RegFile_21; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_21;
  reg [31:0] RegFile_22; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_22;
  reg [31:0] RegFile_23; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_23;
  reg [31:0] RegFile_24; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_24;
  reg [31:0] RegFile_25; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_25;
  reg [31:0] RegFile_26; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_26;
  reg [31:0] RegFile_27; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_27;
  reg [31:0] RegFile_28; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_28;
  reg [31:0] RegFile_29; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_29;
  reg [31:0] RegFile_30; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_30;
  reg [31:0] RegFile_31; // @[RegisterFile.scala 19:24:@106.4]
  reg [31:0] _RAND_31;
  wire  _T_262; // @[RegisterFile.scala 22:23:@108.6]
  wire [31:0] _GEN_0; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_1; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_2; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_3; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_4; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_5; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_6; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_7; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_8; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_9; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_10; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_11; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_12; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_13; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_14; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_15; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_16; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_17; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_18; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_19; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_20; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_21; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_22; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_23; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_24; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_25; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_26; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_27; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_28; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_29; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_30; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_31; // @[RegisterFile.scala 23:29:@110.8]
  wire [31:0] _GEN_32; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_33; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_34; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_35; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_36; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_37; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_38; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_39; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_40; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_41; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_42; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_43; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_44; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_45; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_46; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_47; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_48; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_49; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_50; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_51; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_52; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_53; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_54; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_55; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_56; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_57; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_58; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_59; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_60; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_61; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_62; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_63; // @[RegisterFile.scala 22:32:@109.6]
  wire [31:0] _GEN_64; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_65; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_66; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_67; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_68; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_69; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_70; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_71; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_72; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_73; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_74; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_75; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_76; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_77; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_78; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_79; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_80; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_81; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_82; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_83; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_84; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_85; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_86; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_87; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_88; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_89; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_90; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_91; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_92; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_93; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_94; // @[RegisterFile.scala 21:24:@107.4]
  wire [31:0] _GEN_95; // @[RegisterFile.scala 21:24:@107.4]
  wire  _T_267; // @[RegisterFile.scala 27:21:@113.4]
  wire [31:0] _GEN_97; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_98; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_99; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_100; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_101; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_102; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_103; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_104; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_105; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_106; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_107; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_108; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_109; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_110; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_111; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_112; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_113; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_114; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_115; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_116; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_117; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_118; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_119; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_120; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_121; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_122; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_123; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_124; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_125; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_126; // @[RegisterFile.scala 28:18:@115.6]
  wire [31:0] _GEN_127; // @[RegisterFile.scala 28:18:@115.6]
  wire  _T_273; // @[RegisterFile.scala 33:21:@120.4]
  wire [31:0] _GEN_130; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_131; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_132; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_133; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_134; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_135; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_136; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_137; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_138; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_139; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_140; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_141; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_142; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_143; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_144; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_145; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_146; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_147; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_148; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_149; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_150; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_151; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_152; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_153; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_154; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_155; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_156; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_157; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_158; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_159; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_160; // @[RegisterFile.scala 34:18:@122.6]
  wire [31:0] _GEN_163; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_164; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_165; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_166; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_167; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_168; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_169; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_170; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_171; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_172; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_173; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_174; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_175; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_176; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_177; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_178; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_179; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_180; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_181; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_182; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_183; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_184; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_185; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_186; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_187; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_188; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_189; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_190; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_191; // @[RegisterFile.scala 40:17:@127.4]
  wire [31:0] _GEN_192; // @[RegisterFile.scala 40:17:@127.4]
  assign _T_262 = io_WriteAddr != 5'h0; // @[RegisterFile.scala 22:23:@108.6]
  assign _GEN_0 = 5'h0 == io_WriteAddr ? io_WriteData : RegFile_0; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_1 = 5'h1 == io_WriteAddr ? io_WriteData : RegFile_1; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_2 = 5'h2 == io_WriteAddr ? io_WriteData : RegFile_2; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_3 = 5'h3 == io_WriteAddr ? io_WriteData : RegFile_3; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_4 = 5'h4 == io_WriteAddr ? io_WriteData : RegFile_4; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_5 = 5'h5 == io_WriteAddr ? io_WriteData : RegFile_5; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_6 = 5'h6 == io_WriteAddr ? io_WriteData : RegFile_6; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_7 = 5'h7 == io_WriteAddr ? io_WriteData : RegFile_7; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_8 = 5'h8 == io_WriteAddr ? io_WriteData : RegFile_8; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_9 = 5'h9 == io_WriteAddr ? io_WriteData : RegFile_9; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_10 = 5'ha == io_WriteAddr ? io_WriteData : RegFile_10; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_11 = 5'hb == io_WriteAddr ? io_WriteData : RegFile_11; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_12 = 5'hc == io_WriteAddr ? io_WriteData : RegFile_12; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_13 = 5'hd == io_WriteAddr ? io_WriteData : RegFile_13; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_14 = 5'he == io_WriteAddr ? io_WriteData : RegFile_14; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_15 = 5'hf == io_WriteAddr ? io_WriteData : RegFile_15; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_16 = 5'h10 == io_WriteAddr ? io_WriteData : RegFile_16; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_17 = 5'h11 == io_WriteAddr ? io_WriteData : RegFile_17; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_18 = 5'h12 == io_WriteAddr ? io_WriteData : RegFile_18; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_19 = 5'h13 == io_WriteAddr ? io_WriteData : RegFile_19; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_20 = 5'h14 == io_WriteAddr ? io_WriteData : RegFile_20; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_21 = 5'h15 == io_WriteAddr ? io_WriteData : RegFile_21; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_22 = 5'h16 == io_WriteAddr ? io_WriteData : RegFile_22; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_23 = 5'h17 == io_WriteAddr ? io_WriteData : RegFile_23; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_24 = 5'h18 == io_WriteAddr ? io_WriteData : RegFile_24; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_25 = 5'h19 == io_WriteAddr ? io_WriteData : RegFile_25; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_26 = 5'h1a == io_WriteAddr ? io_WriteData : RegFile_26; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_27 = 5'h1b == io_WriteAddr ? io_WriteData : RegFile_27; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_28 = 5'h1c == io_WriteAddr ? io_WriteData : RegFile_28; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_29 = 5'h1d == io_WriteAddr ? io_WriteData : RegFile_29; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_30 = 5'h1e == io_WriteAddr ? io_WriteData : RegFile_30; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_31 = 5'h1f == io_WriteAddr ? io_WriteData : RegFile_31; // @[RegisterFile.scala 23:29:@110.8]
  assign _GEN_32 = _T_262 ? _GEN_0 : RegFile_0; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_33 = _T_262 ? _GEN_1 : RegFile_1; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_34 = _T_262 ? _GEN_2 : RegFile_2; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_35 = _T_262 ? _GEN_3 : RegFile_3; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_36 = _T_262 ? _GEN_4 : RegFile_4; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_37 = _T_262 ? _GEN_5 : RegFile_5; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_38 = _T_262 ? _GEN_6 : RegFile_6; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_39 = _T_262 ? _GEN_7 : RegFile_7; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_40 = _T_262 ? _GEN_8 : RegFile_8; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_41 = _T_262 ? _GEN_9 : RegFile_9; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_42 = _T_262 ? _GEN_10 : RegFile_10; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_43 = _T_262 ? _GEN_11 : RegFile_11; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_44 = _T_262 ? _GEN_12 : RegFile_12; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_45 = _T_262 ? _GEN_13 : RegFile_13; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_46 = _T_262 ? _GEN_14 : RegFile_14; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_47 = _T_262 ? _GEN_15 : RegFile_15; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_48 = _T_262 ? _GEN_16 : RegFile_16; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_49 = _T_262 ? _GEN_17 : RegFile_17; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_50 = _T_262 ? _GEN_18 : RegFile_18; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_51 = _T_262 ? _GEN_19 : RegFile_19; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_52 = _T_262 ? _GEN_20 : RegFile_20; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_53 = _T_262 ? _GEN_21 : RegFile_21; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_54 = _T_262 ? _GEN_22 : RegFile_22; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_55 = _T_262 ? _GEN_23 : RegFile_23; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_56 = _T_262 ? _GEN_24 : RegFile_24; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_57 = _T_262 ? _GEN_25 : RegFile_25; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_58 = _T_262 ? _GEN_26 : RegFile_26; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_59 = _T_262 ? _GEN_27 : RegFile_27; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_60 = _T_262 ? _GEN_28 : RegFile_28; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_61 = _T_262 ? _GEN_29 : RegFile_29; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_62 = _T_262 ? _GEN_30 : RegFile_30; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_63 = _T_262 ? _GEN_31 : RegFile_31; // @[RegisterFile.scala 22:32:@109.6]
  assign _GEN_64 = io_WriteEnable ? _GEN_32 : RegFile_0; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_65 = io_WriteEnable ? _GEN_33 : RegFile_1; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_66 = io_WriteEnable ? _GEN_34 : RegFile_2; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_67 = io_WriteEnable ? _GEN_35 : RegFile_3; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_68 = io_WriteEnable ? _GEN_36 : RegFile_4; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_69 = io_WriteEnable ? _GEN_37 : RegFile_5; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_70 = io_WriteEnable ? _GEN_38 : RegFile_6; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_71 = io_WriteEnable ? _GEN_39 : RegFile_7; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_72 = io_WriteEnable ? _GEN_40 : RegFile_8; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_73 = io_WriteEnable ? _GEN_41 : RegFile_9; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_74 = io_WriteEnable ? _GEN_42 : RegFile_10; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_75 = io_WriteEnable ? _GEN_43 : RegFile_11; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_76 = io_WriteEnable ? _GEN_44 : RegFile_12; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_77 = io_WriteEnable ? _GEN_45 : RegFile_13; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_78 = io_WriteEnable ? _GEN_46 : RegFile_14; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_79 = io_WriteEnable ? _GEN_47 : RegFile_15; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_80 = io_WriteEnable ? _GEN_48 : RegFile_16; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_81 = io_WriteEnable ? _GEN_49 : RegFile_17; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_82 = io_WriteEnable ? _GEN_50 : RegFile_18; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_83 = io_WriteEnable ? _GEN_51 : RegFile_19; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_84 = io_WriteEnable ? _GEN_52 : RegFile_20; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_85 = io_WriteEnable ? _GEN_53 : RegFile_21; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_86 = io_WriteEnable ? _GEN_54 : RegFile_22; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_87 = io_WriteEnable ? _GEN_55 : RegFile_23; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_88 = io_WriteEnable ? _GEN_56 : RegFile_24; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_89 = io_WriteEnable ? _GEN_57 : RegFile_25; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_90 = io_WriteEnable ? _GEN_58 : RegFile_26; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_91 = io_WriteEnable ? _GEN_59 : RegFile_27; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_92 = io_WriteEnable ? _GEN_60 : RegFile_28; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_93 = io_WriteEnable ? _GEN_61 : RegFile_29; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_94 = io_WriteEnable ? _GEN_62 : RegFile_30; // @[RegisterFile.scala 21:24:@107.4]
  assign _GEN_95 = io_WriteEnable ? _GEN_63 : RegFile_31; // @[RegisterFile.scala 21:24:@107.4]
  assign _T_267 = io_ReadAddr1 != 5'h0; // @[RegisterFile.scala 27:21:@113.4]
  assign _GEN_97 = 5'h1 == io_ReadAddr1 ? RegFile_1 : RegFile_0; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_98 = 5'h2 == io_ReadAddr1 ? RegFile_2 : _GEN_97; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_99 = 5'h3 == io_ReadAddr1 ? RegFile_3 : _GEN_98; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_100 = 5'h4 == io_ReadAddr1 ? RegFile_4 : _GEN_99; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_101 = 5'h5 == io_ReadAddr1 ? RegFile_5 : _GEN_100; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_102 = 5'h6 == io_ReadAddr1 ? RegFile_6 : _GEN_101; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_103 = 5'h7 == io_ReadAddr1 ? RegFile_7 : _GEN_102; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_104 = 5'h8 == io_ReadAddr1 ? RegFile_8 : _GEN_103; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_105 = 5'h9 == io_ReadAddr1 ? RegFile_9 : _GEN_104; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_106 = 5'ha == io_ReadAddr1 ? RegFile_10 : _GEN_105; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_107 = 5'hb == io_ReadAddr1 ? RegFile_11 : _GEN_106; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_108 = 5'hc == io_ReadAddr1 ? RegFile_12 : _GEN_107; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_109 = 5'hd == io_ReadAddr1 ? RegFile_13 : _GEN_108; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_110 = 5'he == io_ReadAddr1 ? RegFile_14 : _GEN_109; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_111 = 5'hf == io_ReadAddr1 ? RegFile_15 : _GEN_110; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_112 = 5'h10 == io_ReadAddr1 ? RegFile_16 : _GEN_111; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_113 = 5'h11 == io_ReadAddr1 ? RegFile_17 : _GEN_112; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_114 = 5'h12 == io_ReadAddr1 ? RegFile_18 : _GEN_113; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_115 = 5'h13 == io_ReadAddr1 ? RegFile_19 : _GEN_114; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_116 = 5'h14 == io_ReadAddr1 ? RegFile_20 : _GEN_115; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_117 = 5'h15 == io_ReadAddr1 ? RegFile_21 : _GEN_116; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_118 = 5'h16 == io_ReadAddr1 ? RegFile_22 : _GEN_117; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_119 = 5'h17 == io_ReadAddr1 ? RegFile_23 : _GEN_118; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_120 = 5'h18 == io_ReadAddr1 ? RegFile_24 : _GEN_119; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_121 = 5'h19 == io_ReadAddr1 ? RegFile_25 : _GEN_120; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_122 = 5'h1a == io_ReadAddr1 ? RegFile_26 : _GEN_121; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_123 = 5'h1b == io_ReadAddr1 ? RegFile_27 : _GEN_122; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_124 = 5'h1c == io_ReadAddr1 ? RegFile_28 : _GEN_123; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_125 = 5'h1d == io_ReadAddr1 ? RegFile_29 : _GEN_124; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_126 = 5'h1e == io_ReadAddr1 ? RegFile_30 : _GEN_125; // @[RegisterFile.scala 28:18:@115.6]
  assign _GEN_127 = 5'h1f == io_ReadAddr1 ? RegFile_31 : _GEN_126; // @[RegisterFile.scala 28:18:@115.6]
  assign _T_273 = io_ReadAddr2 != 5'h0; // @[RegisterFile.scala 33:21:@120.4]
  assign _GEN_130 = 5'h1 == io_ReadAddr2 ? RegFile_1 : RegFile_0; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_131 = 5'h2 == io_ReadAddr2 ? RegFile_2 : _GEN_130; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_132 = 5'h3 == io_ReadAddr2 ? RegFile_3 : _GEN_131; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_133 = 5'h4 == io_ReadAddr2 ? RegFile_4 : _GEN_132; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_134 = 5'h5 == io_ReadAddr2 ? RegFile_5 : _GEN_133; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_135 = 5'h6 == io_ReadAddr2 ? RegFile_6 : _GEN_134; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_136 = 5'h7 == io_ReadAddr2 ? RegFile_7 : _GEN_135; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_137 = 5'h8 == io_ReadAddr2 ? RegFile_8 : _GEN_136; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_138 = 5'h9 == io_ReadAddr2 ? RegFile_9 : _GEN_137; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_139 = 5'ha == io_ReadAddr2 ? RegFile_10 : _GEN_138; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_140 = 5'hb == io_ReadAddr2 ? RegFile_11 : _GEN_139; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_141 = 5'hc == io_ReadAddr2 ? RegFile_12 : _GEN_140; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_142 = 5'hd == io_ReadAddr2 ? RegFile_13 : _GEN_141; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_143 = 5'he == io_ReadAddr2 ? RegFile_14 : _GEN_142; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_144 = 5'hf == io_ReadAddr2 ? RegFile_15 : _GEN_143; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_145 = 5'h10 == io_ReadAddr2 ? RegFile_16 : _GEN_144; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_146 = 5'h11 == io_ReadAddr2 ? RegFile_17 : _GEN_145; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_147 = 5'h12 == io_ReadAddr2 ? RegFile_18 : _GEN_146; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_148 = 5'h13 == io_ReadAddr2 ? RegFile_19 : _GEN_147; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_149 = 5'h14 == io_ReadAddr2 ? RegFile_20 : _GEN_148; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_150 = 5'h15 == io_ReadAddr2 ? RegFile_21 : _GEN_149; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_151 = 5'h16 == io_ReadAddr2 ? RegFile_22 : _GEN_150; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_152 = 5'h17 == io_ReadAddr2 ? RegFile_23 : _GEN_151; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_153 = 5'h18 == io_ReadAddr2 ? RegFile_24 : _GEN_152; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_154 = 5'h19 == io_ReadAddr2 ? RegFile_25 : _GEN_153; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_155 = 5'h1a == io_ReadAddr2 ? RegFile_26 : _GEN_154; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_156 = 5'h1b == io_ReadAddr2 ? RegFile_27 : _GEN_155; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_157 = 5'h1c == io_ReadAddr2 ? RegFile_28 : _GEN_156; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_158 = 5'h1d == io_ReadAddr2 ? RegFile_29 : _GEN_157; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_159 = 5'h1e == io_ReadAddr2 ? RegFile_30 : _GEN_158; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_160 = 5'h1f == io_ReadAddr2 ? RegFile_31 : _GEN_159; // @[RegisterFile.scala 34:18:@122.6]
  assign _GEN_163 = 5'h1 == io__DebugAddr ? RegFile_1 : RegFile_0; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_164 = 5'h2 == io__DebugAddr ? RegFile_2 : _GEN_163; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_165 = 5'h3 == io__DebugAddr ? RegFile_3 : _GEN_164; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_166 = 5'h4 == io__DebugAddr ? RegFile_4 : _GEN_165; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_167 = 5'h5 == io__DebugAddr ? RegFile_5 : _GEN_166; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_168 = 5'h6 == io__DebugAddr ? RegFile_6 : _GEN_167; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_169 = 5'h7 == io__DebugAddr ? RegFile_7 : _GEN_168; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_170 = 5'h8 == io__DebugAddr ? RegFile_8 : _GEN_169; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_171 = 5'h9 == io__DebugAddr ? RegFile_9 : _GEN_170; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_172 = 5'ha == io__DebugAddr ? RegFile_10 : _GEN_171; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_173 = 5'hb == io__DebugAddr ? RegFile_11 : _GEN_172; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_174 = 5'hc == io__DebugAddr ? RegFile_12 : _GEN_173; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_175 = 5'hd == io__DebugAddr ? RegFile_13 : _GEN_174; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_176 = 5'he == io__DebugAddr ? RegFile_14 : _GEN_175; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_177 = 5'hf == io__DebugAddr ? RegFile_15 : _GEN_176; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_178 = 5'h10 == io__DebugAddr ? RegFile_16 : _GEN_177; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_179 = 5'h11 == io__DebugAddr ? RegFile_17 : _GEN_178; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_180 = 5'h12 == io__DebugAddr ? RegFile_18 : _GEN_179; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_181 = 5'h13 == io__DebugAddr ? RegFile_19 : _GEN_180; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_182 = 5'h14 == io__DebugAddr ? RegFile_20 : _GEN_181; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_183 = 5'h15 == io__DebugAddr ? RegFile_21 : _GEN_182; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_184 = 5'h16 == io__DebugAddr ? RegFile_22 : _GEN_183; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_185 = 5'h17 == io__DebugAddr ? RegFile_23 : _GEN_184; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_186 = 5'h18 == io__DebugAddr ? RegFile_24 : _GEN_185; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_187 = 5'h19 == io__DebugAddr ? RegFile_25 : _GEN_186; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_188 = 5'h1a == io__DebugAddr ? RegFile_26 : _GEN_187; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_189 = 5'h1b == io__DebugAddr ? RegFile_27 : _GEN_188; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_190 = 5'h1c == io__DebugAddr ? RegFile_28 : _GEN_189; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_191 = 5'h1d == io__DebugAddr ? RegFile_29 : _GEN_190; // @[RegisterFile.scala 40:17:@127.4]
  assign _GEN_192 = 5'h1e == io__DebugAddr ? RegFile_30 : _GEN_191; // @[RegisterFile.scala 40:17:@127.4]
  assign io_ReadData1 = _T_267 ? _GEN_127 : 32'h0; // @[RegisterFile.scala 28:18:@115.6 RegisterFile.scala 30:18:@118.6]
  assign io_ReadData2 = _T_273 ? _GEN_160 : 32'h0; // @[RegisterFile.scala 34:18:@122.6 RegisterFile.scala 36:18:@125.6]
  assign io__DebugData = 5'h1f == io__DebugAddr ? RegFile_31 : _GEN_192; // @[RegisterFile.scala 40:17:@127.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  RegFile_0 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  RegFile_1 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  RegFile_2 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  RegFile_3 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  RegFile_4 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  RegFile_5 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  RegFile_6 = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  RegFile_7 = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  RegFile_8 = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  RegFile_9 = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  RegFile_10 = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  RegFile_11 = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  RegFile_12 = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  RegFile_13 = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  RegFile_14 = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  RegFile_15 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  RegFile_16 = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  RegFile_17 = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  RegFile_18 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  RegFile_19 = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  RegFile_20 = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  RegFile_21 = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  RegFile_22 = _RAND_22[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  RegFile_23 = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  RegFile_24 = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  RegFile_25 = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  RegFile_26 = _RAND_26[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  RegFile_27 = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  RegFile_28 = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  RegFile_29 = _RAND_29[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  RegFile_30 = _RAND_30[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  RegFile_31 = _RAND_31[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      RegFile_0 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h0 == io_WriteAddr) begin
            RegFile_0 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_1 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h1 == io_WriteAddr) begin
            RegFile_1 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_2 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h2 == io_WriteAddr) begin
            RegFile_2 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_3 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h3 == io_WriteAddr) begin
            RegFile_3 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_4 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h4 == io_WriteAddr) begin
            RegFile_4 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_5 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h5 == io_WriteAddr) begin
            RegFile_5 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_6 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h6 == io_WriteAddr) begin
            RegFile_6 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_7 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h7 == io_WriteAddr) begin
            RegFile_7 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_8 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h8 == io_WriteAddr) begin
            RegFile_8 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_9 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h9 == io_WriteAddr) begin
            RegFile_9 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_10 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'ha == io_WriteAddr) begin
            RegFile_10 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_11 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'hb == io_WriteAddr) begin
            RegFile_11 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_12 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'hc == io_WriteAddr) begin
            RegFile_12 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_13 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'hd == io_WriteAddr) begin
            RegFile_13 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_14 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'he == io_WriteAddr) begin
            RegFile_14 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_15 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'hf == io_WriteAddr) begin
            RegFile_15 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_16 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h10 == io_WriteAddr) begin
            RegFile_16 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_17 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h11 == io_WriteAddr) begin
            RegFile_17 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_18 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h12 == io_WriteAddr) begin
            RegFile_18 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_19 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h13 == io_WriteAddr) begin
            RegFile_19 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_20 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h14 == io_WriteAddr) begin
            RegFile_20 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_21 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h15 == io_WriteAddr) begin
            RegFile_21 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_22 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h16 == io_WriteAddr) begin
            RegFile_22 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_23 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h17 == io_WriteAddr) begin
            RegFile_23 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_24 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h18 == io_WriteAddr) begin
            RegFile_24 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_25 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h19 == io_WriteAddr) begin
            RegFile_25 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_26 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h1a == io_WriteAddr) begin
            RegFile_26 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_27 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h1b == io_WriteAddr) begin
            RegFile_27 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_28 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h1c == io_WriteAddr) begin
            RegFile_28 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_29 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h1d == io_WriteAddr) begin
            RegFile_29 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_30 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h1e == io_WriteAddr) begin
            RegFile_30 <= io_WriteData;
          end
        end
      end
    end
    if (reset) begin
      RegFile_31 <= 32'h0;
    end else begin
      if (io_WriteEnable) begin
        if (_T_262) begin
          if (5'h1f == io_WriteAddr) begin
            RegFile_31 <= io_WriteData;
          end
        end
      end
    end
  end
endmodule
module ALU( // @[:@129.2]
  input  [3:0]  io_ALUCtl, // @[:@132.4]
  input  [31:0] io_ALUOp1, // @[:@132.4]
  input  [31:0] io_ALUOp2, // @[:@132.4]
  output [31:0] io_ALUOut, // @[:@132.4]
  output        io_Zero // @[:@132.4]
);
  wire [31:0] _T_17; // @[ALU.scala 22:17:@134.4]
  wire [31:0] _T_18; // @[ALU.scala 22:17:@135.4]
  wire [31:0] _T_20; // @[ALU.scala 22:36:@136.4]
  wire [31:0] _T_21; // @[ALU.scala 22:36:@137.4]
  wire [32:0] _T_23; // @[ALU.scala 22:56:@138.4]
  wire [31:0] _T_24; // @[ALU.scala 22:56:@139.4]
  wire [31:0] _T_25; // @[ALU.scala 22:56:@140.4]
  wire [32:0] _T_27; // @[ALU.scala 23:17:@141.4]
  wire [31:0] _T_28; // @[ALU.scala 23:17:@142.4]
  wire [31:0] _T_29; // @[ALU.scala 23:17:@143.4]
  wire  _T_32; // @[ALU.scala 23:51:@144.4]
  wire [31:0] _T_34; // @[Cat.scala 30:58:@146.4]
  wire [31:0] _T_35; // @[ALU.scala 23:58:@147.4]
  wire [31:0] _T_37; // @[ALU.scala 24:17:@148.4]
  wire [31:0] _T_38; // @[ALU.scala 24:17:@149.4]
  wire [31:0] _T_42; // @[ALU.scala 24:32:@152.4]
  wire [31:0] _T_43; // @[ALU.scala 24:32:@153.4]
  wire  _T_44; // @[Mux.scala 46:19:@154.4]
  wire [31:0] _T_45; // @[Mux.scala 46:16:@155.4]
  wire  _T_46; // @[Mux.scala 46:19:@156.4]
  wire [31:0] _T_47; // @[Mux.scala 46:16:@157.4]
  wire  _T_48; // @[Mux.scala 46:19:@158.4]
  wire [31:0] _T_49; // @[Mux.scala 46:16:@159.4]
  wire  _T_50; // @[Mux.scala 46:19:@160.4]
  wire [31:0] _T_51; // @[Mux.scala 46:16:@161.4]
  wire  _T_52; // @[Mux.scala 46:19:@162.4]
  wire [31:0] _T_53; // @[Mux.scala 46:16:@163.4]
  wire  _T_54; // @[Mux.scala 46:19:@164.4]
  wire [31:0] _T_55; // @[Mux.scala 46:16:@165.4]
  wire  _T_56; // @[Mux.scala 46:19:@166.4]
  assign _T_17 = $signed(io_ALUOp1) & $signed(io_ALUOp2); // @[ALU.scala 22:17:@134.4]
  assign _T_18 = $signed(_T_17); // @[ALU.scala 22:17:@135.4]
  assign _T_20 = $signed(io_ALUOp1) | $signed(io_ALUOp2); // @[ALU.scala 22:36:@136.4]
  assign _T_21 = $signed(_T_20); // @[ALU.scala 22:36:@137.4]
  assign _T_23 = $signed(io_ALUOp1) + $signed(io_ALUOp2); // @[ALU.scala 22:56:@138.4]
  assign _T_24 = $signed(io_ALUOp1) + $signed(io_ALUOp2); // @[ALU.scala 22:56:@139.4]
  assign _T_25 = $signed(_T_24); // @[ALU.scala 22:56:@140.4]
  assign _T_27 = $signed(io_ALUOp1) - $signed(io_ALUOp2); // @[ALU.scala 23:17:@141.4]
  assign _T_28 = $signed(io_ALUOp1) - $signed(io_ALUOp2); // @[ALU.scala 23:17:@142.4]
  assign _T_29 = $signed(_T_28); // @[ALU.scala 23:17:@143.4]
  assign _T_32 = $signed(io_ALUOp1) < $signed(io_ALUOp2); // @[ALU.scala 23:51:@144.4]
  assign _T_34 = {31'h0,_T_32}; // @[Cat.scala 30:58:@146.4]
  assign _T_35 = $signed(_T_34); // @[ALU.scala 23:58:@147.4]
  assign _T_37 = $signed(io_ALUOp1) ^ $signed(io_ALUOp2); // @[ALU.scala 24:17:@148.4]
  assign _T_38 = $signed(_T_37); // @[ALU.scala 24:17:@149.4]
  assign _T_42 = ~ _T_21; // @[ALU.scala 24:32:@152.4]
  assign _T_43 = $signed(_T_42); // @[ALU.scala 24:32:@153.4]
  assign _T_44 = 4'hc == io_ALUCtl; // @[Mux.scala 46:19:@154.4]
  assign _T_45 = _T_44 ? $signed(_T_43) : $signed(32'sh0); // @[Mux.scala 46:16:@155.4]
  assign _T_46 = 4'ha == io_ALUCtl; // @[Mux.scala 46:19:@156.4]
  assign _T_47 = _T_46 ? $signed(_T_38) : $signed(_T_45); // @[Mux.scala 46:16:@157.4]
  assign _T_48 = 4'h7 == io_ALUCtl; // @[Mux.scala 46:19:@158.4]
  assign _T_49 = _T_48 ? $signed(_T_35) : $signed(_T_47); // @[Mux.scala 46:16:@159.4]
  assign _T_50 = 4'h6 == io_ALUCtl; // @[Mux.scala 46:19:@160.4]
  assign _T_51 = _T_50 ? $signed(_T_29) : $signed(_T_49); // @[Mux.scala 46:16:@161.4]
  assign _T_52 = 4'h2 == io_ALUCtl; // @[Mux.scala 46:19:@162.4]
  assign _T_53 = _T_52 ? $signed(_T_25) : $signed(_T_51); // @[Mux.scala 46:16:@163.4]
  assign _T_54 = 4'h1 == io_ALUCtl; // @[Mux.scala 46:19:@164.4]
  assign _T_55 = _T_54 ? $signed(_T_21) : $signed(_T_53); // @[Mux.scala 46:16:@165.4]
  assign _T_56 = 4'h0 == io_ALUCtl; // @[Mux.scala 46:19:@166.4]
  assign io_ALUOut = _T_56 ? $signed(_T_18) : $signed(_T_55); // @[ALU.scala 21:13:@168.4]
  assign io_Zero = $signed(io_ALUOut) == $signed(32'sh0); // @[ALU.scala 27:11:@170.4]
endmodule
module SignedExtend( // @[:@172.2]
  input  [15:0] io_in, // @[:@175.4]
  output [31:0] io_out // @[:@175.4]
);
  assign io_out = {{16{io_in[15]}},io_in}; // @[SignedExtend.scala 11:10:@177.4]
endmodule
module Memory( // @[:@179.2]
  input         clock, // @[:@180.4]
  input  [31:0] io_a, // @[:@182.4]
  input  [31:0] io_d, // @[:@182.4]
  input  [31:0] io_dpra, // @[:@182.4]
  input         io_we, // @[:@182.4]
  output [31:0] io_spo, // @[:@182.4]
  output [31:0] io_dpo // @[:@182.4]
);
  reg [31:0] mem [0:255]; // @[Memory.scala 15:16:@184.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_22_data; // @[Memory.scala 15:16:@184.4]
  wire [7:0] mem__T_22_addr; // @[Memory.scala 15:16:@184.4]
  wire [31:0] mem__T_24_data; // @[Memory.scala 15:16:@184.4]
  wire [7:0] mem__T_24_addr; // @[Memory.scala 15:16:@184.4]
  wire [31:0] mem__T_20_data; // @[Memory.scala 15:16:@184.4]
  wire [7:0] mem__T_20_addr; // @[Memory.scala 15:16:@184.4]
  wire  mem__T_20_mask; // @[Memory.scala 15:16:@184.4]
  wire  mem__T_20_en; // @[Memory.scala 15:16:@184.4]
  assign mem__T_22_addr = io_a[9:2];
  assign mem__T_22_data = mem[mem__T_22_addr]; // @[Memory.scala 15:16:@184.4]
  assign mem__T_24_addr = io_dpra[9:2];
  assign mem__T_24_data = mem[mem__T_24_addr]; // @[Memory.scala 15:16:@184.4]
  assign mem__T_20_data = io_d;
  assign mem__T_20_addr = io_a[9:2];
  assign mem__T_20_mask = 1'h1;
  assign mem__T_20_en = io_we;
  assign io_spo = mem__T_22_data; // @[Memory.scala 21:10:@192.4]
  assign io_dpo = mem__T_24_data; // @[Memory.scala 22:10:@195.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    mem[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_20_en & mem__T_20_mask) begin
      mem[mem__T_20_addr] <= mem__T_20_data; // @[Memory.scala 15:16:@184.4]
    end
  end
endmodule
module VMem( // @[:@197.2]
  input         clock, // @[:@198.4]
  input  [31:0] io_a, // @[:@200.4]
  input  [31:0] io_dpra, // @[:@200.4]
  input  [31:0] io_d, // @[:@200.4]
  input         io_we, // @[:@200.4]
  output [31:0] io_spo, // @[:@200.4]
  output [31:0] io_dpo // @[:@200.4]
);
  reg [31:0] mem [0:8191]; // @[VMem.scala 15:16:@202.4]
  reg [31:0] _RAND_0;
  wire [31:0] mem__T_22_data; // @[VMem.scala 15:16:@202.4]
  wire [12:0] mem__T_22_addr; // @[VMem.scala 15:16:@202.4]
  wire [31:0] mem__T_24_data; // @[VMem.scala 15:16:@202.4]
  wire [12:0] mem__T_24_addr; // @[VMem.scala 15:16:@202.4]
  wire [31:0] mem__T_20_data; // @[VMem.scala 15:16:@202.4]
  wire [12:0] mem__T_20_addr; // @[VMem.scala 15:16:@202.4]
  wire  mem__T_20_mask; // @[VMem.scala 15:16:@202.4]
  wire  mem__T_20_en; // @[VMem.scala 15:16:@202.4]
  wire [7:0] _T_23; // @[VMem.scala 22:29:@211.4]
  assign mem__T_22_addr = io_a[12:0];
  assign mem__T_22_data = mem[mem__T_22_addr]; // @[VMem.scala 15:16:@202.4]
  assign mem__T_24_addr = {{5'd0}, _T_23};
  assign mem__T_24_data = mem[mem__T_24_addr]; // @[VMem.scala 15:16:@202.4]
  assign mem__T_20_data = io_d;
  assign mem__T_20_addr = io_a[12:0];
  assign mem__T_20_mask = 1'h1;
  assign mem__T_20_en = io_we;
  assign _T_23 = io_dpra[9:2]; // @[VMem.scala 22:29:@211.4]
  assign io_spo = mem__T_22_data; // @[VMem.scala 21:10:@210.4]
  assign io_dpo = mem__T_24_data; // @[VMem.scala 22:10:@213.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_20_en & mem__T_20_mask) begin
      mem[mem__T_20_addr] <= mem__T_20_data; // @[VMem.scala 15:16:@202.4]
    end
  end
endmodule
module MemoryControl( // @[:@215.2]
  input         clock, // @[:@216.4]
  input         reset, // @[:@217.4]
  input  [31:0] io_Addr, // @[:@218.4]
  input  [31:0] io_WriteData, // @[:@218.4]
  input         io_WE, // @[:@218.4]
  input         io_SizeSel, // @[:@218.4]
  input  [11:0] io_Switches, // @[:@218.4]
  input  [3:0]  io_Buttons, // @[:@218.4]
  input         io_Paint, // @[:@218.4]
  output [31:0] io_ReadData, // @[:@218.4]
  input  [15:0] io_VAddr, // @[:@218.4]
  output [11:0] io_VData, // @[:@218.4]
  input  [31:0] io__DebugAddr, // @[:@218.4]
  output [31:0] io__DebugData // @[:@218.4]
);
  wire  MainMemory_clock; // @[MemoryControl.scala 23:26:@220.4]
  wire [31:0] MainMemory_io_a; // @[MemoryControl.scala 23:26:@220.4]
  wire [31:0] MainMemory_io_d; // @[MemoryControl.scala 23:26:@220.4]
  wire [31:0] MainMemory_io_dpra; // @[MemoryControl.scala 23:26:@220.4]
  wire  MainMemory_io_we; // @[MemoryControl.scala 23:26:@220.4]
  wire [31:0] MainMemory_io_spo; // @[MemoryControl.scala 23:26:@220.4]
  wire [31:0] MainMemory_io_dpo; // @[MemoryControl.scala 23:26:@220.4]
  wire  VMem_clock; // @[MemoryControl.scala 24:20:@223.4]
  wire [31:0] VMem_io_a; // @[MemoryControl.scala 24:20:@223.4]
  wire [31:0] VMem_io_dpra; // @[MemoryControl.scala 24:20:@223.4]
  wire [31:0] VMem_io_d; // @[MemoryControl.scala 24:20:@223.4]
  wire  VMem_io_we; // @[MemoryControl.scala 24:20:@223.4]
  wire [31:0] VMem_io_spo; // @[MemoryControl.scala 24:20:@223.4]
  wire [31:0] VMem_io_dpo; // @[MemoryControl.scala 24:20:@223.4]
  wire [29:0] WordAddr; // @[MemoryControl.scala 27:25:@227.4]
  wire [30:0] _T_34; // @[MemoryControl.scala 32:25:@232.4]
  wire [30:0] _T_35; // @[MemoryControl.scala 32:25:@233.4]
  wire [29:0] _T_36; // @[MemoryControl.scala 32:25:@234.4]
  wire [14:0] _T_37; // @[MemoryControl.scala 36:27:@238.4]
  wire  _T_38; // @[MemoryControl.scala 37:27:@240.4]
  wire [11:0] _T_39; // @[MemoryControl.scala 37:42:@241.4]
  wire [11:0] _T_40; // @[MemoryControl.scala 37:62:@242.4]
  reg [31:0] Switches; // @[MemoryControl.scala 39:25:@245.4]
  reg [31:0] _RAND_0;
  reg [11:0] _T_45; // @[MemoryControl.scala 40:22:@246.4]
  reg [31:0] _RAND_1;
  reg [31:0] Buttons; // @[MemoryControl.scala 42:24:@249.4]
  reg [31:0] _RAND_2;
  wire  _T_49; // @[MemoryControl.scala 43:20:@250.4]
  wire [31:0] _GEN_0; // @[MemoryControl.scala 43:25:@251.4]
  reg [31:0] Paint; // @[MemoryControl.scala 47:22:@254.4]
  reg [31:0] _RAND_3;
  reg  _T_53; // @[MemoryControl.scala 48:19:@255.4]
  reg [31:0] _RAND_4;
  wire  _T_56; // @[MemoryControl.scala 50:18:@258.4]
  wire [31:0] _GEN_1; // @[MemoryControl.scala 52:18:@261.6]
  wire  _T_59; // @[MemoryControl.scala 55:25:@266.6]
  wire [31:0] _GEN_2; // @[MemoryControl.scala 57:18:@269.8]
  wire  _T_62; // @[MemoryControl.scala 60:25:@274.8]
  wire [31:0] _GEN_3; // @[MemoryControl.scala 62:18:@277.10]
  wire  _T_64; // @[MemoryControl.scala 65:25:@282.10]
  wire  _GEN_4; // @[MemoryControl.scala 65:34:@283.10]
  wire [31:0] _GEN_5; // @[MemoryControl.scala 65:34:@283.10]
  wire  _GEN_6; // @[MemoryControl.scala 65:34:@283.10]
  wire [31:0] _GEN_7; // @[MemoryControl.scala 60:50:@275.8]
  wire [31:0] _GEN_8; // @[MemoryControl.scala 60:50:@275.8]
  wire  _GEN_9; // @[MemoryControl.scala 60:50:@275.8]
  wire  _GEN_10; // @[MemoryControl.scala 60:50:@275.8]
  wire [31:0] _GEN_11; // @[MemoryControl.scala 55:50:@267.6]
  wire [31:0] _GEN_12; // @[MemoryControl.scala 55:50:@267.6]
  wire [31:0] _GEN_13; // @[MemoryControl.scala 55:50:@267.6]
  wire  _GEN_14; // @[MemoryControl.scala 55:50:@267.6]
  wire  _GEN_15; // @[MemoryControl.scala 55:50:@267.6]
  wire [31:0] ReadWord; // @[MemoryControl.scala 50:43:@259.4]
  wire [31:0] _GEN_17; // @[MemoryControl.scala 50:43:@259.4]
  wire [31:0] _GEN_18; // @[MemoryControl.scala 50:43:@259.4]
  wire [31:0] _GEN_19; // @[MemoryControl.scala 50:43:@259.4]
  wire  _T_67; // @[MemoryControl.scala 74:31:@293.6]
  wire [15:0] _T_68; // @[MemoryControl.scala 74:43:@294.6]
  wire [15:0] _T_69; // @[MemoryControl.scala 74:59:@295.6]
  wire [15:0] _T_70; // @[MemoryControl.scala 74:23:@296.6]
  wire [15:0] _T_72; // @[MemoryControl.scala 75:49:@299.6]
  wire [31:0] _T_74; // @[Cat.scala 30:58:@301.6]
  wire [31:0] _T_77; // @[Cat.scala 30:58:@304.6]
  wire [31:0] _T_78; // @[MemoryControl.scala 75:21:@305.6]
  MainMemory MainMemory ( // @[MemoryControl.scala 23:26:@168.4]
    .clk(MainMemory_clock),
    .a(MainMemory_io_a),
    .d(MainMemory_io_d),
    .dpra(MainMemory_io_dpra),
    .we(MainMemory_io_we),
    .spo(MainMemory_io_spo),
    .dpo(MainMemory_io_dpo)
  );
  VideoMem VMem ( // @[MemoryControl.scala 24:20:@171.4]
    .clk(VMem_clock),
    .a(VMem_io_a),
    .dpra(VMem_io_dpra),
    .d(VMem_io_d),
    .we(VMem_io_we),
    .spo(VMem_io_spo),
    .dpo(VMem_io_dpo)
  );
  assign WordAddr = io_Addr[31:2]; // @[MemoryControl.scala 27:25:@227.4]
  assign _T_34 = WordAddr - 30'h100; // @[MemoryControl.scala 32:25:@232.4]
  assign _T_35 = $unsigned(_T_34); // @[MemoryControl.scala 32:25:@233.4]
  assign _T_36 = _T_35[29:0]; // @[MemoryControl.scala 32:25:@234.4]
  assign _T_37 = io_VAddr[15:1]; // @[MemoryControl.scala 36:27:@238.4]
  assign _T_38 = io_VAddr[0]; // @[MemoryControl.scala 37:27:@240.4]
  assign _T_39 = VMem_io_dpo[27:16]; // @[MemoryControl.scala 37:42:@241.4]
  assign _T_40 = VMem_io_dpo[11:0]; // @[MemoryControl.scala 37:62:@242.4]
  assign _T_49 = io_Buttons != 4'h0; // @[MemoryControl.scala 43:20:@250.4]
  assign _GEN_0 = _T_49 ? {{28'd0}, io_Buttons} : Buttons; // @[MemoryControl.scala 43:25:@251.4]
  assign _T_56 = WordAddr == 30'h3fffffff; // @[MemoryControl.scala 50:18:@258.4]
  assign _GEN_1 = io_WE ? io_WriteData : {{20'd0}, _T_45}; // @[MemoryControl.scala 52:18:@261.6]
  assign _T_59 = WordAddr == 30'h3ffffffe; // @[MemoryControl.scala 55:25:@266.6]
  assign _GEN_2 = io_WE ? io_WriteData : _GEN_0; // @[MemoryControl.scala 57:18:@269.8]
  assign _T_62 = WordAddr == 30'h3ffffffd; // @[MemoryControl.scala 60:25:@274.8]
  assign _GEN_3 = io_WE ? io_WriteData : {{31'd0}, _T_53}; // @[MemoryControl.scala 62:18:@277.10]
  assign _T_64 = WordAddr < 30'h100; // @[MemoryControl.scala 65:25:@282.10]
  assign _GEN_4 = _T_64 ? io_WE : 1'h0; // @[MemoryControl.scala 65:34:@283.10]
  assign _GEN_5 = _T_64 ? MainMemory_io_spo : VMem_io_spo; // @[MemoryControl.scala 65:34:@283.10]
  assign _GEN_6 = _T_64 ? 1'h0 : io_WE; // @[MemoryControl.scala 65:34:@283.10]
  assign _GEN_7 = _T_62 ? Paint : _GEN_5; // @[MemoryControl.scala 60:50:@275.8]
  assign _GEN_8 = _T_62 ? _GEN_3 : {{31'd0}, _T_53}; // @[MemoryControl.scala 60:50:@275.8]
  assign _GEN_9 = _T_62 ? 1'h0 : _GEN_4; // @[MemoryControl.scala 60:50:@275.8]
  assign _GEN_10 = _T_62 ? 1'h0 : _GEN_6; // @[MemoryControl.scala 60:50:@275.8]
  assign _GEN_11 = _T_59 ? Buttons : _GEN_7; // @[MemoryControl.scala 55:50:@267.6]
  assign _GEN_12 = _T_59 ? _GEN_2 : _GEN_0; // @[MemoryControl.scala 55:50:@267.6]
  assign _GEN_13 = _T_59 ? {{31'd0}, _T_53} : _GEN_8; // @[MemoryControl.scala 55:50:@267.6]
  assign _GEN_14 = _T_59 ? 1'h0 : _GEN_9; // @[MemoryControl.scala 55:50:@267.6]
  assign _GEN_15 = _T_59 ? 1'h0 : _GEN_10; // @[MemoryControl.scala 55:50:@267.6]
  assign ReadWord = _T_56 ? Switches : _GEN_11; // @[MemoryControl.scala 50:43:@259.4]
  assign _GEN_17 = _T_56 ? _GEN_1 : {{20'd0}, _T_45}; // @[MemoryControl.scala 50:43:@259.4]
  assign _GEN_18 = _T_56 ? _GEN_0 : _GEN_12; // @[MemoryControl.scala 50:43:@259.4]
  assign _GEN_19 = _T_56 ? {{31'd0}, _T_53} : _GEN_13; // @[MemoryControl.scala 50:43:@259.4]
  assign _T_67 = io_Addr[1]; // @[MemoryControl.scala 74:31:@293.6]
  assign _T_68 = ReadWord[31:16]; // @[MemoryControl.scala 74:43:@294.6]
  assign _T_69 = ReadWord[15:0]; // @[MemoryControl.scala 74:59:@295.6]
  assign _T_70 = _T_67 ? _T_68 : _T_69; // @[MemoryControl.scala 74:23:@296.6]
  assign _T_72 = io_WriteData[15:0]; // @[MemoryControl.scala 75:49:@299.6]
  assign _T_74 = {_T_72,_T_69}; // @[Cat.scala 30:58:@301.6]
  assign _T_77 = {_T_68,_T_72}; // @[Cat.scala 30:58:@304.6]
  assign _T_78 = _T_67 ? _T_74 : _T_77; // @[MemoryControl.scala 75:21:@305.6]
  assign io_ReadData = io_SizeSel ? {{16'd0}, _T_70} : ReadWord; // @[MemoryControl.scala 74:17:@297.6 MemoryControl.scala 77:17:@309.6]
  assign io_VData = _T_38 ? _T_39 : _T_40; // @[MemoryControl.scala 37:12:@244.4]
  assign io__DebugData = MainMemory_io_dpo; // @[MemoryControl.scala 82:17:@313.4]
  assign MainMemory_clock = clock; // @[:@221.4]
  assign MainMemory_io_a = {{2'd0}, WordAddr}; // @[MemoryControl.scala 31:19:@231.4]
  assign MainMemory_io_d = io_SizeSel ? _T_78 : io_WriteData; // @[MemoryControl.scala 33:19:@236.4]
  assign MainMemory_io_dpra = io__DebugAddr; // @[MemoryControl.scala 81:22:@312.4]
  assign MainMemory_io_we = _T_56 ? 1'h0 : _GEN_14; // @[MemoryControl.scala 29:20:@229.4 MemoryControl.scala 66:22:@284.12]
  assign VMem_clock = clock; // @[:@224.4]
  assign VMem_io_a = {{2'd0}, _T_36}; // @[MemoryControl.scala 32:13:@235.4]
  assign VMem_io_dpra = {{17'd0}, _T_37}; // @[MemoryControl.scala 36:16:@239.4]
  assign VMem_io_d = io_SizeSel ? _T_78 : io_WriteData; // @[MemoryControl.scala 34:13:@237.4]
  assign VMem_io_we = _T_56 ? 1'h0 : _GEN_15; // @[MemoryControl.scala 30:14:@230.4 MemoryControl.scala 69:16:@288.12]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  Switches = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_45 = _RAND_1[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  Buttons = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  Paint = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_53 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      Switches <= 32'h0;
    end else begin
      if (_T_56) begin
        if (io_WE) begin
          Switches <= io_WriteData;
        end else begin
          Switches <= {{20'd0}, _T_45};
        end
      end else begin
        Switches <= {{20'd0}, _T_45};
      end
    end
    _T_45 <= io_Switches;
    if (reset) begin
      Buttons <= 32'h0;
    end else begin
      if (_T_56) begin
        if (_T_49) begin
          Buttons <= {{28'd0}, io_Buttons};
        end
      end else begin
        if (_T_59) begin
          if (io_WE) begin
            Buttons <= io_WriteData;
          end else begin
            if (_T_49) begin
              Buttons <= {{28'd0}, io_Buttons};
            end
          end
        end else begin
          if (_T_49) begin
            Buttons <= {{28'd0}, io_Buttons};
          end
        end
      end
    end
    if (reset) begin
      Paint <= 32'h0;
    end else begin
      if (_T_56) begin
        Paint <= {{31'd0}, _T_53};
      end else begin
        if (_T_59) begin
          Paint <= {{31'd0}, _T_53};
        end else begin
          if (_T_62) begin
            if (io_WE) begin
              Paint <= io_WriteData;
            end else begin
              Paint <= {{31'd0}, _T_53};
            end
          end else begin
            Paint <= {{31'd0}, _T_53};
          end
        end
      end
    end
    _T_53 <= io_Paint;
  end
endmodule
module Vga800x600( // @[:@315.2]
  input         clock, // @[:@316.4]
  input         reset, // @[:@317.4]
  output [10:0] io_px, // @[:@318.4]
  output [9:0]  io_py, // @[:@318.4]
  input  [11:0] io_vdata, // @[:@318.4]
  output        io_hs, // @[:@318.4]
  output        io_vs, // @[:@318.4]
  output [3:0]  io_r, // @[:@318.4]
  output [3:0]  io_g, // @[:@318.4]
  output [3:0]  io_b // @[:@318.4]
);
  reg [10:0] xReg; // @[Vga.scala 17:21:@320.4]
  reg [31:0] _RAND_0;
  reg [9:0] yReg; // @[Vga.scala 18:21:@321.4]
  reg [31:0] _RAND_1;
  reg  hsReg; // @[Vga.scala 19:22:@322.4]
  reg [31:0] _RAND_2;
  reg  vsReg; // @[Vga.scala 20:22:@323.4]
  reg [31:0] _RAND_3;
  wire [11:0] _T_30; // @[Vga.scala 22:16:@324.4]
  wire [10:0] _T_31; // @[Vga.scala 22:16:@325.4]
  wire  _T_33; // @[Vga.scala 23:14:@327.4]
  wire [10:0] _T_35; // @[Vga.scala 24:18:@329.6]
  wire [9:0] _T_36; // @[Vga.scala 24:18:@330.6]
  wire [9:0] _GEN_0; // @[Vga.scala 23:26:@328.4]
  wire [10:0] _GEN_1; // @[Vga.scala 23:26:@328.4]
  wire  _T_39; // @[Vga.scala 27:14:@334.4]
  wire [9:0] _GEN_2; // @[Vga.scala 27:25:@335.4]
  wire  _T_42; // @[Vga.scala 30:14:@338.4]
  wire  _GEN_3; // @[Vga.scala 30:25:@339.4]
  wire  _T_45; // @[Vga.scala 33:14:@342.4]
  wire  _GEN_4; // @[Vga.scala 33:25:@343.4]
  wire  _T_48; // @[Vga.scala 36:14:@346.4]
  wire  _GEN_5; // @[Vga.scala 36:25:@347.4]
  wire  _T_51; // @[Vga.scala 39:14:@350.4]
  wire  _GEN_6; // @[Vga.scala 39:25:@351.4]
  assign _T_30 = xReg + 11'h1; // @[Vga.scala 22:16:@324.4]
  assign _T_31 = xReg + 11'h1; // @[Vga.scala 22:16:@325.4]
  assign _T_33 = xReg == 11'h410; // @[Vga.scala 23:14:@327.4]
  assign _T_35 = yReg + 10'h1; // @[Vga.scala 24:18:@329.6]
  assign _T_36 = yReg + 10'h1; // @[Vga.scala 24:18:@330.6]
  assign _GEN_0 = _T_33 ? _T_36 : yReg; // @[Vga.scala 23:26:@328.4]
  assign _GEN_1 = _T_33 ? 11'h0 : _T_31; // @[Vga.scala 23:26:@328.4]
  assign _T_39 = yReg == 10'h29a; // @[Vga.scala 27:14:@334.4]
  assign _GEN_2 = _T_39 ? 10'h0 : _GEN_0; // @[Vga.scala 27:25:@335.4]
  assign _T_42 = xReg == 11'h358; // @[Vga.scala 30:14:@338.4]
  assign _GEN_3 = _T_42 ? 1'h0 : hsReg; // @[Vga.scala 30:25:@339.4]
  assign _T_45 = xReg == 11'h3d0; // @[Vga.scala 33:14:@342.4]
  assign _GEN_4 = _T_45 ? 1'h1 : _GEN_3; // @[Vga.scala 33:25:@343.4]
  assign _T_48 = yReg == 10'h27d; // @[Vga.scala 36:14:@346.4]
  assign _GEN_5 = _T_48 ? 1'h0 : vsReg; // @[Vga.scala 36:25:@347.4]
  assign _T_51 = yReg == 10'h283; // @[Vga.scala 39:14:@350.4]
  assign _GEN_6 = _T_51 ? 1'h1 : _GEN_5; // @[Vga.scala 39:25:@351.4]
  assign io_px = xReg; // @[Vga.scala 43:9:@354.4]
  assign io_py = yReg; // @[Vga.scala 44:9:@355.4]
  assign io_hs = hsReg; // @[Vga.scala 48:9:@362.4]
  assign io_vs = vsReg; // @[Vga.scala 49:9:@363.4]
  assign io_r = io_vdata[11:8]; // @[Vga.scala 45:8:@357.4]
  assign io_g = io_vdata[7:4]; // @[Vga.scala 46:8:@359.4]
  assign io_b = io_vdata[3:0]; // @[Vga.scala 47:8:@361.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  xReg = _RAND_0[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  yReg = _RAND_1[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  hsReg = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  vsReg = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      xReg <= 11'h0;
    end else begin
      if (_T_33) begin
        xReg <= 11'h0;
      end else begin
        xReg <= _T_31;
      end
    end
    if (reset) begin
      yReg <= 10'h0;
    end else begin
      if (_T_39) begin
        yReg <= 10'h0;
      end else begin
        if (_T_33) begin
          yReg <= _T_36;
        end
      end
    end
    if (reset) begin
      hsReg <= 1'h1;
    end else begin
      if (_T_45) begin
        hsReg <= 1'h1;
      end else begin
        if (_T_42) begin
          hsReg <= 1'h0;
        end
      end
    end
    if (reset) begin
      vsReg <= 1'h1;
    end else begin
      if (_T_51) begin
        vsReg <= 1'h1;
      end else begin
        if (_T_48) begin
          vsReg <= 1'h0;
        end
      end
    end
  end
endmodule
module DCU( // @[:@365.2]
  input         clock, // @[:@366.4]
  input         reset, // @[:@367.4]
  input  [11:0] io_vdata, // @[:@368.4]
  output [15:0] io_vaddr, // @[:@368.4]
  output [3:0]  io_r, // @[:@368.4]
  output [3:0]  io_g, // @[:@368.4]
  output [3:0]  io_b, // @[:@368.4]
  output        io_hs, // @[:@368.4]
  output        io_vs // @[:@368.4]
);
  wire  Vga_clock; // @[DisplayControlUnit.scala 21:19:@371.4]
  wire  Vga_reset; // @[DisplayControlUnit.scala 21:19:@371.4]
  wire [10:0] Vga_io_px; // @[DisplayControlUnit.scala 21:19:@371.4]
  wire [9:0] Vga_io_py; // @[DisplayControlUnit.scala 21:19:@371.4]
  wire [11:0] Vga_io_vdata; // @[DisplayControlUnit.scala 21:19:@371.4]
  wire  Vga_io_hs; // @[DisplayControlUnit.scala 21:19:@371.4]
  wire  Vga_io_vs; // @[DisplayControlUnit.scala 21:19:@371.4]
  wire [3:0] Vga_io_r; // @[DisplayControlUnit.scala 21:19:@371.4]
  wire [3:0] Vga_io_g; // @[DisplayControlUnit.scala 21:19:@371.4]
  wire [3:0] Vga_io_b; // @[DisplayControlUnit.scala 21:19:@371.4]
  reg [15:0] vaddrReg; // @[DisplayControlUnit.scala 20:25:@370.4]
  reg [31:0] _RAND_0;
  wire  _T_22; // @[DisplayControlUnit.scala 29:18:@380.4]
  wire  _T_24; // @[DisplayControlUnit.scala 29:39:@381.4]
  wire  _T_25; // @[DisplayControlUnit.scala 29:27:@382.4]
  wire  _T_27; // @[DisplayControlUnit.scala 29:59:@383.4]
  wire  _T_28; // @[DisplayControlUnit.scala 29:47:@384.4]
  wire  _T_30; // @[DisplayControlUnit.scala 29:80:@385.4]
  wire  _T_31; // @[DisplayControlUnit.scala 29:68:@386.4]
  wire [10:0] _T_34; // @[DisplayControlUnit.scala 36:32:@391.6]
  wire [10:0] _T_35; // @[DisplayControlUnit.scala 36:32:@392.6]
  wire [9:0] _T_36; // @[DisplayControlUnit.scala 36:32:@393.6]
  wire [6:0] _T_37; // @[DisplayControlUnit.scala 36:40:@394.6]
  wire [11:0] _T_39; // @[DisplayControlUnit.scala 36:58:@395.6]
  wire [11:0] _T_40; // @[DisplayControlUnit.scala 36:58:@396.6]
  wire [10:0] _T_41; // @[DisplayControlUnit.scala 36:58:@397.6]
  wire [6:0] _T_42; // @[DisplayControlUnit.scala 36:66:@398.6]
  wire [13:0] _T_43; // @[Cat.scala 30:58:@399.6]
  wire [15:0] _GEN_1; // @[DisplayControlUnit.scala 29:90:@387.4]
  Vga800x600 Vga ( // @[DisplayControlUnit.scala 21:19:@371.4]
    .clock(Vga_clock),
    .reset(Vga_reset),
    .io_px(Vga_io_px),
    .io_py(Vga_io_py),
    .io_vdata(Vga_io_vdata),
    .io_hs(Vga_io_hs),
    .io_vs(Vga_io_vs),
    .io_r(Vga_io_r),
    .io_g(Vga_io_g),
    .io_b(Vga_io_b)
  );
  assign _T_22 = Vga_io_px <= 11'h150; // @[DisplayControlUnit.scala 29:18:@380.4]
  assign _T_24 = Vga_io_px >= 11'h1d0; // @[DisplayControlUnit.scala 29:39:@381.4]
  assign _T_25 = _T_22 | _T_24; // @[DisplayControlUnit.scala 29:27:@382.4]
  assign _T_27 = Vga_io_py <= 10'hec; // @[DisplayControlUnit.scala 29:59:@383.4]
  assign _T_28 = _T_25 | _T_27; // @[DisplayControlUnit.scala 29:47:@384.4]
  assign _T_30 = Vga_io_py >= 10'h16c; // @[DisplayControlUnit.scala 29:80:@385.4]
  assign _T_31 = _T_28 | _T_30; // @[DisplayControlUnit.scala 29:68:@386.4]
  assign _T_34 = Vga_io_py - 10'hec; // @[DisplayControlUnit.scala 36:32:@391.6]
  assign _T_35 = $unsigned(_T_34); // @[DisplayControlUnit.scala 36:32:@392.6]
  assign _T_36 = _T_35[9:0]; // @[DisplayControlUnit.scala 36:32:@393.6]
  assign _T_37 = _T_36[6:0]; // @[DisplayControlUnit.scala 36:40:@394.6]
  assign _T_39 = Vga_io_px - 11'h150; // @[DisplayControlUnit.scala 36:58:@395.6]
  assign _T_40 = $unsigned(_T_39); // @[DisplayControlUnit.scala 36:58:@396.6]
  assign _T_41 = _T_40[10:0]; // @[DisplayControlUnit.scala 36:58:@397.6]
  assign _T_42 = _T_41[6:0]; // @[DisplayControlUnit.scala 36:66:@398.6]
  assign _T_43 = {_T_37,_T_42}; // @[Cat.scala 30:58:@399.6]
  assign _GEN_1 = _T_31 ? vaddrReg : {{2'd0}, _T_43}; // @[DisplayControlUnit.scala 29:90:@387.4]
  assign io_vaddr = vaddrReg; // @[DisplayControlUnit.scala 27:12:@379.4]
  assign io_r = Vga_io_r; // @[DisplayControlUnit.scala 22:8:@374.4]
  assign io_g = Vga_io_g; // @[DisplayControlUnit.scala 23:8:@375.4]
  assign io_b = Vga_io_b; // @[DisplayControlUnit.scala 24:8:@376.4]
  assign io_hs = Vga_io_hs; // @[DisplayControlUnit.scala 25:9:@377.4]
  assign io_vs = Vga_io_vs; // @[DisplayControlUnit.scala 26:9:@378.4]
  assign Vga_clock = clock; // @[:@372.4]
  assign Vga_reset = reset; // @[:@373.4]
  assign Vga_io_vdata = _T_31 ? 12'h0 : io_vdata; // @[DisplayControlUnit.scala 30:18:@388.6 DisplayControlUnit.scala 37:18:@401.6]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  vaddrReg = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      vaddrReg <= 16'h0;
    end else begin
      if (!(_T_31)) begin
        vaddrReg <= {{2'd0}, _T_43};
      end
    end
  end
endmodule
module DataPath( // @[:@404.2]
  input         clock, // @[:@405.4]
  input         reset, // @[:@406.4]
  input         io_PCWrite, // @[:@407.4]
  input         io_PCWriteCond, // @[:@407.4]
  input  [1:0]  io_PCSrc, // @[:@407.4]
  input         io_IRWrite, // @[:@407.4]
  input         io_InstructionOrData, // @[:@407.4]
  input         io_RegDst, // @[:@407.4]
  input         io_MemOrALUOut, // @[:@407.4]
  input         io_MemWrite, // @[:@407.4]
  input         io_ALUSrc1, // @[:@407.4]
  input  [1:0]  io_ALUSrc2, // @[:@407.4]
  input  [3:0]  io_ALUCtl, // @[:@407.4]
  input         io_RegWrite, // @[:@407.4]
  input         io_BeqOrBne, // @[:@407.4]
  input         io_SignedOrZero, // @[:@407.4]
  input         io_SizeSel, // @[:@407.4]
  input  [11:0] io_Switches, // @[:@407.4]
  input  [3:0]  io_Buttons, // @[:@407.4]
  input         io_Paint, // @[:@407.4]
  output [5:0]  io_OpCode, // @[:@407.4]
  output [5:0]  io_Funct, // @[:@407.4]
  input         io_VGAClock, // @[:@407.4]
  output        io_hs, // @[:@407.4]
  output        io_vs, // @[:@407.4]
  output [3:0]  io_r, // @[:@407.4]
  output [3:0]  io_g, // @[:@407.4]
  output [3:0]  io_b, // @[:@407.4]
  input  [11:0] io__DebugAddr, // @[:@407.4]
  output [31:0] io__DebugRegData, // @[:@407.4]
  output [31:0] io__DebugMemData, // @[:@407.4]
  output [31:0] io__PC // @[:@407.4]
);
  wire  RegFile_clock; // @[DataPath.scala 46:23:@409.4]
  wire  RegFile_reset; // @[DataPath.scala 46:23:@409.4]
  wire [4:0] RegFile_io_ReadAddr1; // @[DataPath.scala 46:23:@409.4]
  wire [4:0] RegFile_io_ReadAddr2; // @[DataPath.scala 46:23:@409.4]
  wire  RegFile_io_WriteEnable; // @[DataPath.scala 46:23:@409.4]
  wire [4:0] RegFile_io_WriteAddr; // @[DataPath.scala 46:23:@409.4]
  wire [31:0] RegFile_io_WriteData; // @[DataPath.scala 46:23:@409.4]
  wire [31:0] RegFile_io_ReadData1; // @[DataPath.scala 46:23:@409.4]
  wire [31:0] RegFile_io_ReadData2; // @[DataPath.scala 46:23:@409.4]
  wire [4:0] RegFile_io__DebugAddr; // @[DataPath.scala 46:23:@409.4]
  wire [31:0] RegFile_io__DebugData; // @[DataPath.scala 46:23:@409.4]
  wire [3:0] ALU_io_ALUCtl; // @[DataPath.scala 47:19:@412.4]
  wire [31:0] ALU_io_ALUOp1; // @[DataPath.scala 47:19:@412.4]
  wire [31:0] ALU_io_ALUOp2; // @[DataPath.scala 47:19:@412.4]
  wire [31:0] ALU_io_ALUOut; // @[DataPath.scala 47:19:@412.4]
  wire  ALU_io_Zero; // @[DataPath.scala 47:19:@412.4]
  wire [15:0] SignedExtend_io_in; // @[DataPath.scala 48:28:@415.4]
  wire [31:0] SignedExtend_io_out; // @[DataPath.scala 48:28:@415.4]
  wire  Memory_clock; // @[DataPath.scala 49:22:@418.4]
  wire  Memory_reset; // @[DataPath.scala 49:22:@418.4]
  wire [31:0] Memory_io_Addr; // @[DataPath.scala 49:22:@418.4]
  wire [31:0] Memory_io_WriteData; // @[DataPath.scala 49:22:@418.4]
  wire  Memory_io_WE; // @[DataPath.scala 49:22:@418.4]
  wire  Memory_io_SizeSel; // @[DataPath.scala 49:22:@418.4]
  wire [11:0] Memory_io_Switches; // @[DataPath.scala 49:22:@418.4]
  wire [3:0] Memory_io_Buttons; // @[DataPath.scala 49:22:@418.4]
  wire  Memory_io_Paint; // @[DataPath.scala 49:22:@418.4]
  wire [31:0] Memory_io_ReadData; // @[DataPath.scala 49:22:@418.4]
  wire [15:0] Memory_io_VAddr; // @[DataPath.scala 49:22:@418.4]
  wire [11:0] Memory_io_VData; // @[DataPath.scala 49:22:@418.4]
  wire [31:0] Memory_io__DebugAddr; // @[DataPath.scala 49:22:@418.4]
  wire [31:0] Memory_io__DebugData; // @[DataPath.scala 49:22:@418.4]
  wire  DCU_clock; // @[DataPath.scala 129:44:@508.4]
  wire  DCU_reset; // @[DataPath.scala 129:44:@508.4]
  wire [11:0] DCU_io_vdata; // @[DataPath.scala 129:44:@508.4]
  wire [15:0] DCU_io_vaddr; // @[DataPath.scala 129:44:@508.4]
  wire [3:0] DCU_io_r; // @[DataPath.scala 129:44:@508.4]
  wire [3:0] DCU_io_g; // @[DataPath.scala 129:44:@508.4]
  wire [3:0] DCU_io_b; // @[DataPath.scala 129:44:@508.4]
  wire  DCU_io_hs; // @[DataPath.scala 129:44:@508.4]
  wire  DCU_io_vs; // @[DataPath.scala 129:44:@508.4]
  reg [31:0] PCReg; // @[DataPath.scala 51:22:@421.4]
  reg [31:0] _RAND_0;
  reg [31:0] RegRead1Reg; // @[DataPath.scala 52:28:@422.4]
  reg [31:0] _RAND_1;
  reg [31:0] RegRead2Reg; // @[DataPath.scala 53:28:@423.4]
  reg [31:0] _RAND_2;
  reg [31:0] ALUOut; // @[DataPath.scala 56:23:@424.4]
  reg [31:0] _RAND_3;
  wire [31:0] _T_75; // @[DataPath.scala 60:57:@426.4]
  reg [31:0] MemDataReg; // @[DataPath.scala 65:27:@432.4]
  reg [31:0] _RAND_4;
  reg [31:0] InstructionReg; // @[DataPath.scala 72:31:@436.4]
  reg [31:0] _RAND_5;
  wire [4:0] RT; // @[DataPath.scala 75:26:@439.4]
  wire [4:0] RD; // @[DataPath.scala 76:26:@440.4]
  wire [15:0] Immediate; // @[DataPath.scala 77:33:@441.4]
  wire [25:0] JumpAddr; // @[DataPath.scala 79:32:@443.4]
  wire [31:0] _GEN_0; // @[DataPath.scala 80:20:@444.4]
  wire [33:0] _GEN_2; // @[DataPath.scala 83:39:@447.4]
  wire [33:0] BeqOffset; // @[DataPath.scala 83:39:@447.4]
  wire  _T_79; // @[DataPath.scala 86:71:@448.4]
  wire  _T_80; // @[DataPath.scala 86:44:@449.4]
  wire  _T_81; // @[DataPath.scala 86:39:@450.4]
  wire  PCWriteEnable; // @[DataPath.scala 86:86:@451.4]
  wire [32:0] _T_85; // @[DataPath.scala 89:27:@453.6]
  wire [31:0] _T_86; // @[DataPath.scala 89:27:@454.6]
  wire [3:0] _T_90; // @[DataPath.scala 90:31:@456.6]
  wire [27:0] _GEN_3; // @[DataPath.scala 90:49:@457.6]
  wire [27:0] _T_91; // @[DataPath.scala 90:49:@457.6]
  wire [31:0] _T_92; // @[Cat.scala 30:58:@458.6]
  wire  _T_93; // @[Mux.scala 46:19:@459.6]
  wire [31:0] _T_94; // @[Mux.scala 46:16:@460.6]
  wire  _T_95; // @[Mux.scala 46:19:@461.6]
  wire [31:0] _T_96; // @[Mux.scala 46:16:@462.6]
  wire  _T_97; // @[Mux.scala 46:19:@463.6]
  wire [31:0] _T_98; // @[Mux.scala 46:16:@464.6]
  wire [31:0] _GEN_1; // @[DataPath.scala 87:24:@452.4]
  wire [4:0] _T_103; // @[Mux.scala 46:16:@470.4]
  wire  _T_104; // @[Mux.scala 46:19:@471.4]
  wire [31:0] _T_111; // @[Mux.scala 46:16:@476.4]
  wire  _T_112; // @[Mux.scala 46:19:@477.4]
  wire [31:0] _T_117; // @[DataPath.scala 112:32:@485.4]
  wire [31:0] _T_119; // @[DataPath.scala 112:58:@486.4]
  wire  _T_120; // @[Mux.scala 46:19:@487.4]
  wire [31:0] _T_121; // @[Mux.scala 46:16:@488.4]
  wire [31:0] _T_125; // @[DataPath.scala 115:32:@492.4]
  wire [31:0] _T_128; // @[Cat.scala 30:58:@493.4]
  wire [31:0] _T_129; // @[DataPath.scala 116:89:@494.4]
  wire [31:0] _T_130; // @[DataPath.scala 116:24:@495.4]
  wire  _T_132; // @[Mux.scala 46:19:@496.4]
  wire [33:0] _T_133; // @[Mux.scala 46:16:@497.4]
  wire  _T_134; // @[Mux.scala 46:19:@498.4]
  wire [33:0] _T_135; // @[Mux.scala 46:16:@499.4]
  wire  _T_136; // @[Mux.scala 46:19:@500.4]
  wire [33:0] _T_137; // @[Mux.scala 46:16:@501.4]
  wire [31:0] _GEN_4; // @[DataPath.scala 114:17:@502.4]
  RegisterFile RegFile ( // @[DataPath.scala 46:23:@409.4]
    .clock(RegFile_clock),
    .reset(RegFile_reset),
    .io_ReadAddr1(RegFile_io_ReadAddr1),
    .io_ReadAddr2(RegFile_io_ReadAddr2),
    .io_WriteEnable(RegFile_io_WriteEnable),
    .io_WriteAddr(RegFile_io_WriteAddr),
    .io_WriteData(RegFile_io_WriteData),
    .io_ReadData1(RegFile_io_ReadData1),
    .io_ReadData2(RegFile_io_ReadData2),
    .io__DebugAddr(RegFile_io__DebugAddr),
    .io__DebugData(RegFile_io__DebugData)
  );
  ALU ALU ( // @[DataPath.scala 47:19:@412.4]
    .io_ALUCtl(ALU_io_ALUCtl),
    .io_ALUOp1(ALU_io_ALUOp1),
    .io_ALUOp2(ALU_io_ALUOp2),
    .io_ALUOut(ALU_io_ALUOut),
    .io_Zero(ALU_io_Zero)
  );
  SignedExtend SignedExtend ( // @[DataPath.scala 48:28:@415.4]
    .io_in(SignedExtend_io_in),
    .io_out(SignedExtend_io_out)
  );
  MemoryControl Memory ( // @[DataPath.scala 49:22:@418.4]
    .clock(Memory_clock),
    .reset(Memory_reset),
    .io_Addr(Memory_io_Addr),
    .io_WriteData(Memory_io_WriteData),
    .io_WE(Memory_io_WE),
    .io_SizeSel(Memory_io_SizeSel),
    .io_Switches(Memory_io_Switches),
    .io_Buttons(Memory_io_Buttons),
    .io_Paint(Memory_io_Paint),
    .io_ReadData(Memory_io_ReadData),
    .io_VAddr(Memory_io_VAddr),
    .io_VData(Memory_io_VData),
    .io__DebugAddr(Memory_io__DebugAddr),
    .io__DebugData(Memory_io__DebugData)
  );
  DCU DCU ( // @[DataPath.scala 129:44:@508.4]
    .clock(DCU_clock),
    .reset(DCU_reset),
    .io_vdata(DCU_io_vdata),
    .io_vaddr(DCU_io_vaddr),
    .io_r(DCU_io_r),
    .io_g(DCU_io_g),
    .io_b(DCU_io_b),
    .io_hs(DCU_io_hs),
    .io_vs(DCU_io_vs)
  );
  assign _T_75 = $unsigned(ALUOut); // @[DataPath.scala 60:57:@426.4]
  assign RT = InstructionReg[20:16]; // @[DataPath.scala 75:26:@439.4]
  assign RD = InstructionReg[15:11]; // @[DataPath.scala 76:26:@440.4]
  assign Immediate = InstructionReg[15:0]; // @[DataPath.scala 77:33:@441.4]
  assign JumpAddr = InstructionReg[25:0]; // @[DataPath.scala 79:32:@443.4]
  assign _GEN_0 = io_IRWrite ? Memory_io_ReadData : InstructionReg; // @[DataPath.scala 80:20:@444.4]
  assign _GEN_2 = {{2{SignedExtend_io_out[31]}},SignedExtend_io_out}; // @[DataPath.scala 83:39:@447.4]
  assign BeqOffset = $signed(_GEN_2) << 2; // @[DataPath.scala 83:39:@447.4]
  assign _T_79 = ~ ALU_io_Zero; // @[DataPath.scala 86:71:@448.4]
  assign _T_80 = io_BeqOrBne ? ALU_io_Zero : _T_79; // @[DataPath.scala 86:44:@449.4]
  assign _T_81 = io_PCWriteCond & _T_80; // @[DataPath.scala 86:39:@450.4]
  assign PCWriteEnable = _T_81 | io_PCWrite; // @[DataPath.scala 86:86:@451.4]
  assign _T_85 = PCReg + 32'h4; // @[DataPath.scala 89:27:@453.6]
  assign _T_86 = PCReg + 32'h4; // @[DataPath.scala 89:27:@454.6]
  assign _T_90 = PCReg[31:28]; // @[DataPath.scala 90:31:@456.6]
  assign _GEN_3 = {{2'd0}, JumpAddr}; // @[DataPath.scala 90:49:@457.6]
  assign _T_91 = _GEN_3 << 2; // @[DataPath.scala 90:49:@457.6]
  assign _T_92 = {_T_90,_T_91}; // @[Cat.scala 30:58:@458.6]
  assign _T_93 = 2'h1 == io_PCSrc; // @[Mux.scala 46:19:@459.6]
  assign _T_94 = _T_93 ? _T_92 : 32'h0; // @[Mux.scala 46:16:@460.6]
  assign _T_95 = 2'h2 == io_PCSrc; // @[Mux.scala 46:19:@461.6]
  assign _T_96 = _T_95 ? _T_75 : _T_94; // @[Mux.scala 46:16:@462.6]
  assign _T_97 = 2'h0 == io_PCSrc; // @[Mux.scala 46:19:@463.6]
  assign _T_98 = _T_97 ? _T_86 : _T_96; // @[Mux.scala 46:16:@464.6]
  assign _GEN_1 = PCWriteEnable ? _T_98 : PCReg; // @[DataPath.scala 87:24:@452.4]
  assign _T_103 = io_RegDst ? RD : 5'h0; // @[Mux.scala 46:16:@470.4]
  assign _T_104 = 1'h0 == io_RegDst; // @[Mux.scala 46:19:@471.4]
  assign _T_111 = io_MemOrALUOut ? MemDataReg : 32'h0; // @[Mux.scala 46:16:@476.4]
  assign _T_112 = 1'h0 == io_MemOrALUOut; // @[Mux.scala 46:19:@477.4]
  assign _T_117 = $signed(RegRead1Reg); // @[DataPath.scala 112:32:@485.4]
  assign _T_119 = $signed(PCReg); // @[DataPath.scala 112:58:@486.4]
  assign _T_120 = 1'h0 == io_ALUSrc1; // @[Mux.scala 46:19:@487.4]
  assign _T_121 = _T_120 ? $signed(_T_119) : $signed(32'sh0); // @[Mux.scala 46:16:@488.4]
  assign _T_125 = $signed(RegRead2Reg); // @[DataPath.scala 115:32:@492.4]
  assign _T_128 = {16'h0,Immediate}; // @[Cat.scala 30:58:@493.4]
  assign _T_129 = $signed(_T_128); // @[DataPath.scala 116:89:@494.4]
  assign _T_130 = io_SignedOrZero ? $signed(SignedExtend_io_out) : $signed(_T_129); // @[DataPath.scala 116:24:@495.4]
  assign _T_132 = 2'h3 == io_ALUSrc2; // @[Mux.scala 46:19:@496.4]
  assign _T_133 = _T_132 ? $signed(BeqOffset) : $signed({{2{SignedExtend_io_out[31]}},SignedExtend_io_out}); // @[Mux.scala 46:16:@497.4]
  assign _T_134 = 2'h2 == io_ALUSrc2; // @[Mux.scala 46:19:@498.4]
  assign _T_135 = _T_134 ? $signed({{2{_T_130[31]}},_T_130}) : $signed(_T_133); // @[Mux.scala 46:16:@499.4]
  assign _T_136 = 2'h0 == io_ALUSrc2; // @[Mux.scala 46:19:@500.4]
  assign _T_137 = _T_136 ? $signed({{2{_T_125[31]}},_T_125}) : $signed(_T_135); // @[Mux.scala 46:16:@501.4]
  assign io_OpCode = InstructionReg[31:26]; // @[DataPath.scala 120:13:@503.4]
  assign io_Funct = InstructionReg[5:0]; // @[DataPath.scala 121:12:@504.4]
  assign io_hs = DCU_io_hs; // @[DataPath.scala 132:9:@513.4]
  assign io_vs = DCU_io_vs; // @[DataPath.scala 133:9:@514.4]
  assign io_r = DCU_io_r; // @[DataPath.scala 134:8:@515.4]
  assign io_g = DCU_io_g; // @[DataPath.scala 135:8:@516.4]
  assign io_b = DCU_io_b; // @[DataPath.scala 136:8:@517.4]
  assign io__DebugRegData = RegFile_io__DebugData; // @[DataPath.scala 142:20:@521.4]
  assign io__DebugMemData = Memory_io__DebugData; // @[DataPath.scala 140:20:@519.4]
  assign io__PC = PCReg; // @[DataPath.scala 143:10:@522.4]
  assign RegFile_clock = clock; // @[:@410.4]
  assign RegFile_reset = reset; // @[:@411.4]
  assign RegFile_io_ReadAddr1 = InstructionReg[25:21]; // @[DataPath.scala 95:24:@467.4]
  assign RegFile_io_ReadAddr2 = InstructionReg[20:16]; // @[DataPath.scala 96:24:@468.4]
  assign RegFile_io_WriteEnable = io_RegWrite; // @[DataPath.scala 103:26:@480.4]
  assign RegFile_io_WriteAddr = _T_104 ? RT : _T_103; // @[DataPath.scala 97:24:@473.4]
  assign RegFile_io_WriteData = _T_112 ? _T_75 : _T_111; // @[DataPath.scala 100:24:@479.4]
  assign RegFile_io__DebugAddr = io__DebugAddr[4:0]; // @[DataPath.scala 141:25:@520.4]
  assign ALU_io_ALUCtl = io_ALUCtl; // @[DataPath.scala 109:17:@483.4]
  assign ALU_io_ALUOp1 = io_ALUSrc1 ? $signed(_T_117) : $signed(_T_121); // @[DataPath.scala 111:17:@491.4]
  assign _GEN_4 = _T_137[31:0]; // @[DataPath.scala 114:17:@502.4]
  assign ALU_io_ALUOp2 = $signed(_GEN_4); // @[DataPath.scala 114:17:@502.4]
  assign SignedExtend_io_in = $signed(Immediate); // @[DataPath.scala 106:22:@482.4]
  assign Memory_clock = clock; // @[:@419.4]
  assign Memory_reset = reset; // @[:@420.4]
  assign Memory_io_Addr = io_InstructionOrData ? PCReg : _T_75; // @[DataPath.scala 61:18:@428.4]
  assign Memory_io_WriteData = RegRead2Reg; // @[DataPath.scala 63:23:@430.4]
  assign Memory_io_WE = io_MemWrite; // @[DataPath.scala 62:16:@429.4]
  assign Memory_io_SizeSel = io_SizeSel; // @[DataPath.scala 64:21:@431.4]
  assign Memory_io_Switches = io_Switches; // @[DataPath.scala 124:22:@505.4]
  assign Memory_io_Buttons = io_Buttons; // @[DataPath.scala 125:21:@506.4]
  assign Memory_io_Paint = io_Paint; // @[DataPath.scala 126:19:@507.4]
  assign Memory_io_VAddr = DCU_io_vaddr; // @[DataPath.scala 131:19:@512.4]
  assign Memory_io__DebugAddr = {{20'd0}, io__DebugAddr}; // @[DataPath.scala 139:24:@518.4]
  assign DCU_clock = io_VGAClock; // @[:@509.4]
  assign DCU_reset = reset; // @[:@510.4]
  assign DCU_io_vdata = Memory_io_VData; // @[DataPath.scala 130:16:@511.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  PCReg = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  RegRead1Reg = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  RegRead2Reg = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  ALUOut = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  MemDataReg = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  InstructionReg = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      PCReg <= 32'h0;
    end else begin
      if (PCWriteEnable) begin
        if (_T_97) begin
          PCReg <= _T_86;
        end else begin
          if (_T_95) begin
            PCReg <= _T_75;
          end else begin
            if (_T_93) begin
              PCReg <= _T_92;
            end else begin
              PCReg <= 32'h0;
            end
          end
        end
      end
    end
    if (reset) begin
      RegRead1Reg <= 32'h0;
    end else begin
      RegRead1Reg <= RegFile_io_ReadData1;
    end
    if (reset) begin
      RegRead2Reg <= 32'h0;
    end else begin
      RegRead2Reg <= RegFile_io_ReadData2;
    end
    if (reset) begin
      ALUOut <= 32'sh0;
    end else begin
      ALUOut <= ALU_io_ALUOut;
    end
    MemDataReg <= Memory_io_ReadData;
    if (reset) begin
      InstructionReg <= 32'h0;
    end else begin
      if (io_IRWrite) begin
        InstructionReg <= Memory_io_ReadData;
      end
    end
  end
endmodule
module ControlUnit( // @[:@524.2]
  input        clock, // @[:@525.4]
  input        reset, // @[:@526.4]
  input  [5:0] io_OpCode, // @[:@527.4]
  output       io_PCWrite, // @[:@527.4]
  output       io_PCWriteCond, // @[:@527.4]
  output [1:0] io_PCSrc, // @[:@527.4]
  output       io_IRWrite, // @[:@527.4]
  output       io_InstructionOrData, // @[:@527.4]
  output       io_RegDst, // @[:@527.4]
  output       io_MemOrALUOut, // @[:@527.4]
  output       io_MemWrite, // @[:@527.4]
  output [1:0] io_ALUOp, // @[:@527.4]
  output       io_ALUSrc1, // @[:@527.4]
  output [1:0] io_ALUSrc2, // @[:@527.4]
  output       io_RegWrite, // @[:@527.4]
  output       io_BeqOrBne, // @[:@527.4]
  output       io_SignedOrZero, // @[:@527.4]
  output       io_SizeSel // @[:@527.4]
);
  reg [2:0] State; // @[ControlUnit.scala 40:22:@535.4]
  reg [31:0] _RAND_0;
  wire  _T_62; // @[Mux.scala 46:19:@537.4]
  wire [2:0] _T_63; // @[Mux.scala 46:16:@538.4]
  wire  _T_64; // @[Mux.scala 46:19:@539.4]
  wire [2:0] _T_65; // @[Mux.scala 46:16:@540.4]
  wire  _T_66; // @[Mux.scala 46:19:@541.4]
  wire [2:0] _T_67; // @[Mux.scala 46:16:@542.4]
  wire  _T_86; // @[Mux.scala 46:19:@543.4]
  wire [2:0] _T_87; // @[Mux.scala 46:16:@544.4]
  wire  _T_88; // @[Mux.scala 46:19:@545.4]
  wire [2:0] _T_89; // @[Mux.scala 46:16:@546.4]
  wire  _T_90; // @[Mux.scala 46:19:@547.4]
  wire [2:0] _T_91; // @[Mux.scala 46:16:@548.4]
  wire  _T_92; // @[Mux.scala 46:19:@549.4]
  wire [2:0] _T_93; // @[Mux.scala 46:16:@550.4]
  wire  _T_94; // @[Mux.scala 46:19:@551.4]
  wire [2:0] _T_95; // @[Mux.scala 46:16:@552.4]
  wire  _T_96; // @[Mux.scala 46:19:@553.4]
  wire [2:0] _T_97; // @[Mux.scala 46:16:@554.4]
  wire  _T_98; // @[Mux.scala 46:19:@555.4]
  wire [2:0] _T_99; // @[Mux.scala 46:16:@556.4]
  wire  _T_100; // @[Mux.scala 46:19:@557.4]
  wire [2:0] _T_101; // @[Mux.scala 46:16:@558.4]
  wire  _T_104; // @[Mux.scala 46:19:@559.4]
  wire [2:0] _T_105; // @[Mux.scala 46:16:@560.4]
  wire  _T_106; // @[Mux.scala 46:19:@561.4]
  wire [2:0] _T_107; // @[Mux.scala 46:16:@562.4]
  wire  _T_108; // @[Mux.scala 46:19:@563.4]
  wire [2:0] _T_109; // @[Mux.scala 46:16:@564.4]
  wire  _T_110; // @[Mux.scala 46:19:@565.4]
  wire [2:0] _T_111; // @[Mux.scala 46:16:@566.4]
  wire  _T_112; // @[Mux.scala 46:19:@567.4]
  wire [2:0] _T_113; // @[Mux.scala 46:16:@568.4]
  wire  _T_114; // @[Mux.scala 46:19:@569.4]
  wire [2:0] NextState; // @[Mux.scala 46:16:@570.4]
  wire  _T_151; // @[Conditional.scala 37:30:@612.12]
  wire  _T_157; // @[Conditional.scala 37:30:@620.14]
  wire [1:0] _GEN_0; // @[Conditional.scala 39:67:@703.34]
  wire [1:0] _GEN_4; // @[Conditional.scala 39:67:@695.32]
  wire  _GEN_5; // @[Conditional.scala 39:67:@695.32]
  wire  _GEN_7; // @[Conditional.scala 39:67:@695.32]
  wire [1:0] _GEN_8; // @[Conditional.scala 39:67:@687.30]
  wire  _GEN_9; // @[Conditional.scala 39:67:@687.30]
  wire  _GEN_11; // @[Conditional.scala 39:67:@687.30]
  wire [1:0] _GEN_12; // @[Conditional.scala 39:67:@679.28]
  wire  _GEN_13; // @[Conditional.scala 39:67:@679.28]
  wire  _GEN_15; // @[Conditional.scala 39:67:@679.28]
  wire [1:0] _GEN_16; // @[Conditional.scala 39:67:@671.26]
  wire  _GEN_17; // @[Conditional.scala 39:67:@671.26]
  wire  _GEN_19; // @[Conditional.scala 39:67:@671.26]
  wire [1:0] _GEN_21; // @[Conditional.scala 39:67:@665.24]
  wire  _GEN_22; // @[Conditional.scala 39:67:@665.24]
  wire  _GEN_24; // @[Conditional.scala 39:67:@665.24]
  wire  _GEN_25; // @[Conditional.scala 39:67:@655.22]
  wire [1:0] _GEN_26; // @[Conditional.scala 39:67:@655.22]
  wire [1:0] _GEN_28; // @[Conditional.scala 39:67:@655.22]
  wire  _GEN_29; // @[Conditional.scala 39:67:@655.22]
  wire [1:0] _GEN_30; // @[Conditional.scala 39:67:@655.22]
  wire  _GEN_31; // @[Conditional.scala 39:67:@655.22]
  wire  _GEN_32; // @[Conditional.scala 39:67:@655.22]
  wire  _GEN_33; // @[Conditional.scala 39:67:@645.20]
  wire [1:0] _GEN_34; // @[Conditional.scala 39:67:@645.20]
  wire  _GEN_35; // @[Conditional.scala 39:67:@645.20]
  wire [1:0] _GEN_36; // @[Conditional.scala 39:67:@645.20]
  wire  _GEN_37; // @[Conditional.scala 39:67:@645.20]
  wire [1:0] _GEN_38; // @[Conditional.scala 39:67:@645.20]
  wire  _GEN_39; // @[Conditional.scala 39:67:@645.20]
  wire  _GEN_40; // @[Conditional.scala 39:67:@645.20]
  wire [1:0] _GEN_41; // @[Conditional.scala 39:67:@637.18]
  wire  _GEN_42; // @[Conditional.scala 39:67:@637.18]
  wire [1:0] _GEN_43; // @[Conditional.scala 39:67:@637.18]
  wire  _GEN_45; // @[Conditional.scala 39:67:@637.18]
  wire  _GEN_46; // @[Conditional.scala 39:67:@637.18]
  wire [1:0] _GEN_47; // @[Conditional.scala 39:67:@637.18]
  wire  _GEN_48; // @[Conditional.scala 39:67:@637.18]
  wire  _GEN_49; // @[Conditional.scala 39:67:@637.18]
  wire [1:0] _GEN_50; // @[Conditional.scala 39:67:@629.16]
  wire  _GEN_51; // @[Conditional.scala 39:67:@629.16]
  wire [1:0] _GEN_52; // @[Conditional.scala 39:67:@629.16]
  wire  _GEN_53; // @[Conditional.scala 39:67:@629.16]
  wire  _GEN_54; // @[Conditional.scala 39:67:@629.16]
  wire  _GEN_55; // @[Conditional.scala 39:67:@629.16]
  wire [1:0] _GEN_56; // @[Conditional.scala 39:67:@629.16]
  wire  _GEN_57; // @[Conditional.scala 39:67:@629.16]
  wire  _GEN_58; // @[Conditional.scala 39:67:@629.16]
  wire [1:0] _GEN_59; // @[Conditional.scala 39:67:@621.14]
  wire  _GEN_60; // @[Conditional.scala 39:67:@621.14]
  wire [1:0] _GEN_61; // @[Conditional.scala 39:67:@621.14]
  wire  _GEN_62; // @[Conditional.scala 39:67:@621.14]
  wire  _GEN_63; // @[Conditional.scala 39:67:@621.14]
  wire  _GEN_64; // @[Conditional.scala 39:67:@621.14]
  wire [1:0] _GEN_65; // @[Conditional.scala 39:67:@621.14]
  wire  _GEN_66; // @[Conditional.scala 39:67:@621.14]
  wire  _GEN_67; // @[Conditional.scala 39:67:@621.14]
  wire [1:0] _GEN_68; // @[Conditional.scala 39:67:@613.12]
  wire  _GEN_69; // @[Conditional.scala 39:67:@613.12]
  wire [1:0] _GEN_70; // @[Conditional.scala 39:67:@613.12]
  wire  _GEN_71; // @[Conditional.scala 39:67:@613.12]
  wire  _GEN_72; // @[Conditional.scala 39:67:@613.12]
  wire  _GEN_73; // @[Conditional.scala 39:67:@613.12]
  wire [1:0] _GEN_74; // @[Conditional.scala 39:67:@613.12]
  wire  _GEN_75; // @[Conditional.scala 39:67:@613.12]
  wire  _GEN_76; // @[Conditional.scala 39:67:@613.12]
  wire [1:0] _GEN_77; // @[Conditional.scala 40:58:@606.10]
  wire  _GEN_78; // @[Conditional.scala 40:58:@606.10]
  wire [1:0] _GEN_79; // @[Conditional.scala 40:58:@606.10]
  wire  _GEN_80; // @[Conditional.scala 40:58:@606.10]
  wire  _GEN_81; // @[Conditional.scala 40:58:@606.10]
  wire  _GEN_82; // @[Conditional.scala 40:58:@606.10]
  wire [1:0] _GEN_83; // @[Conditional.scala 40:58:@606.10]
  wire  _GEN_84; // @[Conditional.scala 40:58:@606.10]
  wire  _GEN_85; // @[Conditional.scala 40:58:@606.10]
  wire  _GEN_87; // @[Conditional.scala 39:67:@773.30]
  wire  _GEN_89; // @[Conditional.scala 39:67:@767.28]
  wire  _GEN_91; // @[Conditional.scala 39:67:@761.26]
  wire  _GEN_93; // @[Conditional.scala 39:67:@755.24]
  wire  _GEN_95; // @[Conditional.scala 39:67:@749.22]
  wire  _GEN_96; // @[Conditional.scala 39:67:@742.20]
  wire  _GEN_98; // @[Conditional.scala 39:67:@742.20]
  wire  _GEN_99; // @[Conditional.scala 39:67:@742.20]
  wire  _GEN_100; // @[Conditional.scala 39:67:@735.18]
  wire  _GEN_101; // @[Conditional.scala 39:67:@735.18]
  wire  _GEN_102; // @[Conditional.scala 39:67:@735.18]
  wire  _GEN_103; // @[Conditional.scala 39:67:@735.18]
  wire  _GEN_104; // @[Conditional.scala 39:67:@735.18]
  wire  _GEN_105; // @[Conditional.scala 39:67:@728.16]
  wire  _GEN_107; // @[Conditional.scala 39:67:@728.16]
  wire  _GEN_108; // @[Conditional.scala 39:67:@728.16]
  wire  _GEN_109; // @[Conditional.scala 39:67:@728.16]
  wire  _GEN_110; // @[Conditional.scala 39:67:@728.16]
  wire  _GEN_111; // @[Conditional.scala 39:67:@721.14]
  wire  _GEN_112; // @[Conditional.scala 39:67:@721.14]
  wire  _GEN_113; // @[Conditional.scala 39:67:@721.14]
  wire  _GEN_114; // @[Conditional.scala 39:67:@721.14]
  wire  _GEN_115; // @[Conditional.scala 39:67:@721.14]
  wire  _GEN_116; // @[Conditional.scala 39:67:@721.14]
  wire  _GEN_117; // @[Conditional.scala 40:58:@714.12]
  wire  _GEN_118; // @[Conditional.scala 40:58:@714.12]
  wire  _GEN_119; // @[Conditional.scala 40:58:@714.12]
  wire  _GEN_120; // @[Conditional.scala 40:58:@714.12]
  wire  _GEN_121; // @[Conditional.scala 40:58:@714.12]
  wire  _GEN_122; // @[Conditional.scala 40:58:@714.12]
  wire  _GEN_124; // @[Conditional.scala 39:67:@780.12]
  wire  _GEN_125; // @[Conditional.scala 39:67:@712.10]
  wire  _GEN_126; // @[Conditional.scala 39:67:@712.10]
  wire  _GEN_127; // @[Conditional.scala 39:67:@712.10]
  wire  _GEN_128; // @[Conditional.scala 39:67:@712.10]
  wire  _GEN_129; // @[Conditional.scala 39:67:@712.10]
  wire  _GEN_130; // @[Conditional.scala 39:67:@712.10]
  wire [1:0] _GEN_131; // @[Conditional.scala 39:67:@604.8]
  wire  _GEN_132; // @[Conditional.scala 39:67:@604.8]
  wire [1:0] _GEN_133; // @[Conditional.scala 39:67:@604.8]
  wire  _GEN_134; // @[Conditional.scala 39:67:@604.8]
  wire  _GEN_135; // @[Conditional.scala 39:67:@604.8]
  wire  _GEN_136; // @[Conditional.scala 39:67:@604.8]
  wire [1:0] _GEN_137; // @[Conditional.scala 39:67:@604.8]
  wire  _GEN_138; // @[Conditional.scala 39:67:@604.8]
  wire  _GEN_139; // @[Conditional.scala 39:67:@604.8]
  wire  _GEN_140; // @[Conditional.scala 39:67:@604.8]
  wire  _GEN_141; // @[Conditional.scala 39:67:@604.8]
  wire  _GEN_142; // @[Conditional.scala 39:67:@604.8]
  wire  _GEN_143; // @[Conditional.scala 39:67:@604.8]
  wire  _GEN_144; // @[Conditional.scala 39:67:@604.8]
  wire [1:0] _GEN_145; // @[Conditional.scala 39:67:@596.6]
  wire  _GEN_146; // @[Conditional.scala 39:67:@596.6]
  wire [1:0] _GEN_147; // @[Conditional.scala 39:67:@596.6]
  wire  _GEN_148; // @[Conditional.scala 39:67:@596.6]
  wire  _GEN_149; // @[Conditional.scala 39:67:@596.6]
  wire  _GEN_150; // @[Conditional.scala 39:67:@596.6]
  wire  _GEN_151; // @[Conditional.scala 39:67:@596.6]
  wire [1:0] _GEN_152; // @[Conditional.scala 39:67:@596.6]
  wire  _GEN_153; // @[Conditional.scala 39:67:@596.6]
  wire  _GEN_154; // @[Conditional.scala 39:67:@596.6]
  wire  _GEN_155; // @[Conditional.scala 39:67:@596.6]
  wire  _GEN_156; // @[Conditional.scala 39:67:@596.6]
  wire  _GEN_157; // @[Conditional.scala 39:67:@596.6]
  wire  _GEN_158; // @[Conditional.scala 39:67:@596.6]
  assign _T_62 = 6'h2 == io_OpCode; // @[Mux.scala 46:19:@537.4]
  assign _T_63 = _T_62 ? 3'h1 : 3'h4; // @[Mux.scala 46:16:@538.4]
  assign _T_64 = 6'h5 == io_OpCode; // @[Mux.scala 46:19:@539.4]
  assign _T_65 = _T_64 ? 3'h1 : _T_63; // @[Mux.scala 46:16:@540.4]
  assign _T_66 = 6'h4 == io_OpCode; // @[Mux.scala 46:19:@541.4]
  assign _T_67 = _T_66 ? 3'h1 : _T_65; // @[Mux.scala 46:16:@542.4]
  assign _T_86 = 6'h29 == io_OpCode; // @[Mux.scala 46:19:@543.4]
  assign _T_87 = _T_86 ? 3'h1 : 3'h5; // @[Mux.scala 46:16:@544.4]
  assign _T_88 = 6'h2b == io_OpCode; // @[Mux.scala 46:19:@545.4]
  assign _T_89 = _T_88 ? 3'h1 : _T_87; // @[Mux.scala 46:16:@546.4]
  assign _T_90 = 6'ha == io_OpCode; // @[Mux.scala 46:19:@547.4]
  assign _T_91 = _T_90 ? 3'h1 : _T_89; // @[Mux.scala 46:16:@548.4]
  assign _T_92 = 6'he == io_OpCode; // @[Mux.scala 46:19:@549.4]
  assign _T_93 = _T_92 ? 3'h1 : _T_91; // @[Mux.scala 46:16:@550.4]
  assign _T_94 = 6'hd == io_OpCode; // @[Mux.scala 46:19:@551.4]
  assign _T_95 = _T_94 ? 3'h1 : _T_93; // @[Mux.scala 46:16:@552.4]
  assign _T_96 = 6'h8 == io_OpCode; // @[Mux.scala 46:19:@553.4]
  assign _T_97 = _T_96 ? 3'h1 : _T_95; // @[Mux.scala 46:16:@554.4]
  assign _T_98 = 6'hc == io_OpCode; // @[Mux.scala 46:19:@555.4]
  assign _T_99 = _T_98 ? 3'h1 : _T_97; // @[Mux.scala 46:16:@556.4]
  assign _T_100 = 6'h0 == io_OpCode; // @[Mux.scala 46:19:@557.4]
  assign _T_101 = _T_100 ? 3'h1 : _T_99; // @[Mux.scala 46:16:@558.4]
  assign _T_104 = 3'h5 == State; // @[Mux.scala 46:19:@559.4]
  assign _T_105 = _T_104 ? 3'h1 : 3'h0; // @[Mux.scala 46:16:@560.4]
  assign _T_106 = 3'h4 == State; // @[Mux.scala 46:19:@561.4]
  assign _T_107 = _T_106 ? _T_101 : _T_105; // @[Mux.scala 46:16:@562.4]
  assign _T_108 = 3'h3 == State; // @[Mux.scala 46:19:@563.4]
  assign _T_109 = _T_108 ? _T_67 : _T_107; // @[Mux.scala 46:16:@564.4]
  assign _T_110 = 3'h2 == State; // @[Mux.scala 46:19:@565.4]
  assign _T_111 = _T_110 ? 3'h3 : _T_109; // @[Mux.scala 46:16:@566.4]
  assign _T_112 = 3'h1 == State; // @[Mux.scala 46:19:@567.4]
  assign _T_113 = _T_112 ? 3'h2 : _T_111; // @[Mux.scala 46:16:@568.4]
  assign _T_114 = 3'h0 == State; // @[Mux.scala 46:19:@569.4]
  assign NextState = _T_114 ? 3'h1 : _T_113; // @[Mux.scala 46:16:@570.4]
  assign _T_151 = 6'h23 == io_OpCode; // @[Conditional.scala 37:30:@612.12]
  assign _T_157 = 6'h21 == io_OpCode; // @[Conditional.scala 37:30:@620.14]
  assign _GEN_0 = _T_90 ? 2'h3 : 2'h0; // @[Conditional.scala 39:67:@703.34]
  assign _GEN_4 = _T_92 ? 2'h3 : _GEN_0; // @[Conditional.scala 39:67:@695.32]
  assign _GEN_5 = _T_92 ? 1'h1 : _T_90; // @[Conditional.scala 39:67:@695.32]
  assign _GEN_7 = _T_92 ? 1'h0 : 1'h1; // @[Conditional.scala 39:67:@695.32]
  assign _GEN_8 = _T_94 ? 2'h3 : _GEN_4; // @[Conditional.scala 39:67:@687.30]
  assign _GEN_9 = _T_94 ? 1'h1 : _GEN_5; // @[Conditional.scala 39:67:@687.30]
  assign _GEN_11 = _T_94 ? 1'h0 : _GEN_7; // @[Conditional.scala 39:67:@687.30]
  assign _GEN_12 = _T_98 ? 2'h3 : _GEN_8; // @[Conditional.scala 39:67:@679.28]
  assign _GEN_13 = _T_98 ? 1'h1 : _GEN_9; // @[Conditional.scala 39:67:@679.28]
  assign _GEN_15 = _T_98 ? 1'h0 : _GEN_11; // @[Conditional.scala 39:67:@679.28]
  assign _GEN_16 = _T_96 ? 2'h3 : _GEN_12; // @[Conditional.scala 39:67:@671.26]
  assign _GEN_17 = _T_96 ? 1'h1 : _GEN_13; // @[Conditional.scala 39:67:@671.26]
  assign _GEN_19 = _T_96 ? 1'h1 : _GEN_15; // @[Conditional.scala 39:67:@671.26]
  assign _GEN_21 = _T_62 ? 2'h0 : _GEN_16; // @[Conditional.scala 39:67:@665.24]
  assign _GEN_22 = _T_62 ? 1'h0 : _GEN_17; // @[Conditional.scala 39:67:@665.24]
  assign _GEN_24 = _T_62 ? 1'h1 : _GEN_19; // @[Conditional.scala 39:67:@665.24]
  assign _GEN_25 = _T_64 ? 1'h0 : 1'h1; // @[Conditional.scala 39:67:@655.22]
  assign _GEN_26 = _T_64 ? 2'h1 : _GEN_21; // @[Conditional.scala 39:67:@655.22]
  assign _GEN_28 = _T_64 ? 2'h2 : {{1'd0}, _T_62}; // @[Conditional.scala 39:67:@655.22]
  assign _GEN_29 = _T_64 ? 1'h1 : _GEN_22; // @[Conditional.scala 39:67:@655.22]
  assign _GEN_30 = _T_64 ? 2'h0 : 2'h2; // @[Conditional.scala 39:67:@655.22]
  assign _GEN_31 = _T_64 ? 1'h0 : _T_62; // @[Conditional.scala 39:67:@655.22]
  assign _GEN_32 = _T_64 ? 1'h1 : _GEN_24; // @[Conditional.scala 39:67:@655.22]
  assign _GEN_33 = _T_66 ? 1'h1 : _GEN_25; // @[Conditional.scala 39:67:@645.20]
  assign _GEN_34 = _T_66 ? 2'h1 : _GEN_26; // @[Conditional.scala 39:67:@645.20]
  assign _GEN_35 = _T_66 ? 1'h1 : _T_64; // @[Conditional.scala 39:67:@645.20]
  assign _GEN_36 = _T_66 ? 2'h2 : _GEN_28; // @[Conditional.scala 39:67:@645.20]
  assign _GEN_37 = _T_66 ? 1'h1 : _GEN_29; // @[Conditional.scala 39:67:@645.20]
  assign _GEN_38 = _T_66 ? 2'h0 : _GEN_30; // @[Conditional.scala 39:67:@645.20]
  assign _GEN_39 = _T_66 ? 1'h0 : _GEN_31; // @[Conditional.scala 39:67:@645.20]
  assign _GEN_40 = _T_66 ? 1'h1 : _GEN_32; // @[Conditional.scala 39:67:@645.20]
  assign _GEN_41 = _T_86 ? 2'h0 : _GEN_34; // @[Conditional.scala 39:67:@637.18]
  assign _GEN_42 = _T_86 ? 1'h1 : _GEN_37; // @[Conditional.scala 39:67:@637.18]
  assign _GEN_43 = _T_86 ? 2'h2 : _GEN_38; // @[Conditional.scala 39:67:@637.18]
  assign _GEN_45 = _T_86 ? 1'h1 : _GEN_33; // @[Conditional.scala 39:67:@637.18]
  assign _GEN_46 = _T_86 ? 1'h0 : _GEN_35; // @[Conditional.scala 39:67:@637.18]
  assign _GEN_47 = _T_86 ? 2'h0 : _GEN_36; // @[Conditional.scala 39:67:@637.18]
  assign _GEN_48 = _T_86 ? 1'h0 : _GEN_39; // @[Conditional.scala 39:67:@637.18]
  assign _GEN_49 = _T_86 ? 1'h1 : _GEN_40; // @[Conditional.scala 39:67:@637.18]
  assign _GEN_50 = _T_88 ? 2'h0 : _GEN_41; // @[Conditional.scala 39:67:@629.16]
  assign _GEN_51 = _T_88 ? 1'h1 : _GEN_42; // @[Conditional.scala 39:67:@629.16]
  assign _GEN_52 = _T_88 ? 2'h2 : _GEN_43; // @[Conditional.scala 39:67:@629.16]
  assign _GEN_53 = _T_88 ? 1'h0 : _T_86; // @[Conditional.scala 39:67:@629.16]
  assign _GEN_54 = _T_88 ? 1'h1 : _GEN_45; // @[Conditional.scala 39:67:@629.16]
  assign _GEN_55 = _T_88 ? 1'h0 : _GEN_46; // @[Conditional.scala 39:67:@629.16]
  assign _GEN_56 = _T_88 ? 2'h0 : _GEN_47; // @[Conditional.scala 39:67:@629.16]
  assign _GEN_57 = _T_88 ? 1'h0 : _GEN_48; // @[Conditional.scala 39:67:@629.16]
  assign _GEN_58 = _T_88 ? 1'h1 : _GEN_49; // @[Conditional.scala 39:67:@629.16]
  assign _GEN_59 = _T_157 ? 2'h0 : _GEN_50; // @[Conditional.scala 39:67:@621.14]
  assign _GEN_60 = _T_157 ? 1'h1 : _GEN_51; // @[Conditional.scala 39:67:@621.14]
  assign _GEN_61 = _T_157 ? 2'h2 : _GEN_52; // @[Conditional.scala 39:67:@621.14]
  assign _GEN_62 = _T_157 ? 1'h1 : _GEN_53; // @[Conditional.scala 39:67:@621.14]
  assign _GEN_63 = _T_157 ? 1'h1 : _GEN_54; // @[Conditional.scala 39:67:@621.14]
  assign _GEN_64 = _T_157 ? 1'h0 : _GEN_55; // @[Conditional.scala 39:67:@621.14]
  assign _GEN_65 = _T_157 ? 2'h0 : _GEN_56; // @[Conditional.scala 39:67:@621.14]
  assign _GEN_66 = _T_157 ? 1'h0 : _GEN_57; // @[Conditional.scala 39:67:@621.14]
  assign _GEN_67 = _T_157 ? 1'h1 : _GEN_58; // @[Conditional.scala 39:67:@621.14]
  assign _GEN_68 = _T_151 ? 2'h0 : _GEN_59; // @[Conditional.scala 39:67:@613.12]
  assign _GEN_69 = _T_151 ? 1'h1 : _GEN_60; // @[Conditional.scala 39:67:@613.12]
  assign _GEN_70 = _T_151 ? 2'h2 : _GEN_61; // @[Conditional.scala 39:67:@613.12]
  assign _GEN_71 = _T_151 ? 1'h0 : _GEN_62; // @[Conditional.scala 39:67:@613.12]
  assign _GEN_72 = _T_151 ? 1'h1 : _GEN_63; // @[Conditional.scala 39:67:@613.12]
  assign _GEN_73 = _T_151 ? 1'h0 : _GEN_64; // @[Conditional.scala 39:67:@613.12]
  assign _GEN_74 = _T_151 ? 2'h0 : _GEN_65; // @[Conditional.scala 39:67:@613.12]
  assign _GEN_75 = _T_151 ? 1'h0 : _GEN_66; // @[Conditional.scala 39:67:@613.12]
  assign _GEN_76 = _T_151 ? 1'h1 : _GEN_67; // @[Conditional.scala 39:67:@613.12]
  assign _GEN_77 = _T_100 ? 2'h2 : _GEN_68; // @[Conditional.scala 40:58:@606.10]
  assign _GEN_78 = _T_100 ? 1'h1 : _GEN_69; // @[Conditional.scala 40:58:@606.10]
  assign _GEN_79 = _T_100 ? 2'h0 : _GEN_70; // @[Conditional.scala 40:58:@606.10]
  assign _GEN_80 = _T_100 ? 1'h0 : _GEN_71; // @[Conditional.scala 40:58:@606.10]
  assign _GEN_81 = _T_100 ? 1'h1 : _GEN_72; // @[Conditional.scala 40:58:@606.10]
  assign _GEN_82 = _T_100 ? 1'h0 : _GEN_73; // @[Conditional.scala 40:58:@606.10]
  assign _GEN_83 = _T_100 ? 2'h0 : _GEN_74; // @[Conditional.scala 40:58:@606.10]
  assign _GEN_84 = _T_100 ? 1'h0 : _GEN_75; // @[Conditional.scala 40:58:@606.10]
  assign _GEN_85 = _T_100 ? 1'h1 : _GEN_76; // @[Conditional.scala 40:58:@606.10]
  assign _GEN_87 = _T_90 ? 1'h0 : 1'h1; // @[Conditional.scala 39:67:@773.30]
  assign _GEN_89 = _T_92 ? 1'h0 : _GEN_87; // @[Conditional.scala 39:67:@767.28]
  assign _GEN_91 = _T_94 ? 1'h0 : _GEN_89; // @[Conditional.scala 39:67:@761.26]
  assign _GEN_93 = _T_98 ? 1'h0 : _GEN_91; // @[Conditional.scala 39:67:@755.24]
  assign _GEN_95 = _T_96 ? 1'h0 : _GEN_93; // @[Conditional.scala 39:67:@749.22]
  assign _GEN_96 = _T_157 ? 1'h0 : 1'h1; // @[Conditional.scala 39:67:@742.20]
  assign _GEN_98 = _T_157 ? 1'h0 : _GEN_17; // @[Conditional.scala 39:67:@742.20]
  assign _GEN_99 = _T_157 ? 1'h1 : _GEN_95; // @[Conditional.scala 39:67:@742.20]
  assign _GEN_100 = _T_151 ? 1'h0 : _GEN_96; // @[Conditional.scala 39:67:@735.18]
  assign _GEN_101 = _T_151 ? 1'h1 : _T_157; // @[Conditional.scala 39:67:@735.18]
  assign _GEN_102 = _T_151 ? 1'h0 : _T_157; // @[Conditional.scala 39:67:@735.18]
  assign _GEN_103 = _T_151 ? 1'h0 : _GEN_98; // @[Conditional.scala 39:67:@735.18]
  assign _GEN_104 = _T_151 ? 1'h1 : _GEN_99; // @[Conditional.scala 39:67:@735.18]
  assign _GEN_105 = _T_86 ? 1'h0 : _GEN_100; // @[Conditional.scala 39:67:@728.16]
  assign _GEN_107 = _T_86 ? 1'h1 : _GEN_102; // @[Conditional.scala 39:67:@728.16]
  assign _GEN_108 = _T_86 ? 1'h0 : _GEN_101; // @[Conditional.scala 39:67:@728.16]
  assign _GEN_109 = _T_86 ? 1'h0 : _GEN_103; // @[Conditional.scala 39:67:@728.16]
  assign _GEN_110 = _T_86 ? 1'h1 : _GEN_104; // @[Conditional.scala 39:67:@728.16]
  assign _GEN_111 = _T_88 ? 1'h0 : _GEN_105; // @[Conditional.scala 39:67:@721.14]
  assign _GEN_112 = _T_88 ? 1'h1 : _T_86; // @[Conditional.scala 39:67:@721.14]
  assign _GEN_113 = _T_88 ? 1'h0 : _GEN_107; // @[Conditional.scala 39:67:@721.14]
  assign _GEN_114 = _T_88 ? 1'h0 : _GEN_108; // @[Conditional.scala 39:67:@721.14]
  assign _GEN_115 = _T_88 ? 1'h0 : _GEN_109; // @[Conditional.scala 39:67:@721.14]
  assign _GEN_116 = _T_88 ? 1'h1 : _GEN_110; // @[Conditional.scala 39:67:@721.14]
  assign _GEN_117 = _T_100 ? 1'h1 : _GEN_115; // @[Conditional.scala 40:58:@714.12]
  assign _GEN_118 = _T_100 ? 1'h1 : _GEN_116; // @[Conditional.scala 40:58:@714.12]
  assign _GEN_119 = _T_100 ? 1'h0 : _GEN_114; // @[Conditional.scala 40:58:@714.12]
  assign _GEN_120 = _T_100 ? 1'h1 : _GEN_111; // @[Conditional.scala 40:58:@714.12]
  assign _GEN_121 = _T_100 ? 1'h0 : _GEN_112; // @[Conditional.scala 40:58:@714.12]
  assign _GEN_122 = _T_100 ? 1'h0 : _GEN_113; // @[Conditional.scala 40:58:@714.12]
  assign _GEN_124 = _T_104 ? 1'h0 : 1'h1; // @[Conditional.scala 39:67:@780.12]
  assign _GEN_125 = _T_106 ? _GEN_117 : _T_104; // @[Conditional.scala 39:67:@712.10]
  assign _GEN_126 = _T_106 ? _GEN_118 : _GEN_124; // @[Conditional.scala 39:67:@712.10]
  assign _GEN_127 = _T_106 ? _GEN_119 : _T_104; // @[Conditional.scala 39:67:@712.10]
  assign _GEN_128 = _T_106 ? _GEN_120 : 1'h1; // @[Conditional.scala 39:67:@712.10]
  assign _GEN_129 = _T_106 ? _GEN_121 : 1'h0; // @[Conditional.scala 39:67:@712.10]
  assign _GEN_130 = _T_106 ? _GEN_122 : 1'h0; // @[Conditional.scala 39:67:@712.10]
  assign _GEN_131 = _T_108 ? _GEN_77 : 2'h0; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_132 = _T_108 ? _GEN_78 : 1'h0; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_133 = _T_108 ? _GEN_79 : 2'h2; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_134 = _T_108 ? _GEN_80 : _GEN_130; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_135 = _T_108 ? _GEN_81 : 1'h1; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_136 = _T_108 ? _GEN_82 : 1'h0; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_137 = _T_108 ? _GEN_83 : 2'h0; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_138 = _T_108 ? _GEN_84 : 1'h0; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_139 = _T_108 ? _GEN_85 : 1'h1; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_140 = _T_108 ? 1'h0 : _GEN_125; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_141 = _T_108 ? 1'h1 : _GEN_126; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_142 = _T_108 ? 1'h0 : _GEN_127; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_143 = _T_108 ? 1'h1 : _GEN_128; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_144 = _T_108 ? 1'h0 : _GEN_129; // @[Conditional.scala 39:67:@604.8]
  assign _GEN_145 = _T_110 ? 2'h0 : _GEN_131; // @[Conditional.scala 39:67:@596.6]
  assign _GEN_146 = _T_110 ? 1'h0 : _GEN_132; // @[Conditional.scala 39:67:@596.6]
  assign _GEN_147 = _T_110 ? 2'h3 : _GEN_133; // @[Conditional.scala 39:67:@596.6]
  assign _GEN_148 = _T_110 ? 1'h1 : _GEN_139; // @[Conditional.scala 39:67:@596.6]
  assign _GEN_149 = _T_110 ? 1'h0 : _GEN_134; // @[Conditional.scala 39:67:@596.6]
  assign _GEN_150 = _T_110 ? 1'h1 : _GEN_135; // @[Conditional.scala 39:67:@596.6]
  assign _GEN_151 = _T_110 ? 1'h0 : _GEN_136; // @[Conditional.scala 39:67:@596.6]
  assign _GEN_152 = _T_110 ? 2'h0 : _GEN_137; // @[Conditional.scala 39:67:@596.6]
  assign _GEN_153 = _T_110 ? 1'h0 : _GEN_138; // @[Conditional.scala 39:67:@596.6]
  assign _GEN_154 = _T_110 ? 1'h0 : _GEN_140; // @[Conditional.scala 39:67:@596.6]
  assign _GEN_155 = _T_110 ? 1'h1 : _GEN_141; // @[Conditional.scala 39:67:@596.6]
  assign _GEN_156 = _T_110 ? 1'h0 : _GEN_142; // @[Conditional.scala 39:67:@596.6]
  assign _GEN_157 = _T_110 ? 1'h1 : _GEN_143; // @[Conditional.scala 39:67:@596.6]
  assign _GEN_158 = _T_110 ? 1'h0 : _GEN_144; // @[Conditional.scala 39:67:@596.6]
  assign io_PCWrite = _T_112 ? 1'h1 : _GEN_153; // @[ControlUnit.scala 33:14:@529.4 ControlUnit.scala 54:16:@572.4 ControlUnit.scala 72:20:@589.6 ControlUnit.scala 131:24:@666.26]
  assign io_PCWriteCond = _T_112 ? 1'h0 : _GEN_151; // @[ControlUnit.scala 34:18:@530.4 ControlUnit.scala 55:20:@573.4 ControlUnit.scala 117:28:@648.22 ControlUnit.scala 125:28:@658.24]
  assign io_PCSrc = _T_112 ? 2'h0 : _GEN_152; // @[ControlUnit.scala 35:12:@531.4 ControlUnit.scala 56:14:@574.4 ControlUnit.scala 73:18:@590.6 ControlUnit.scala 118:22:@649.22 ControlUnit.scala 126:22:@659.24 ControlUnit.scala 132:22:@667.26]
  assign io_IRWrite = 3'h1 == State; // @[ControlUnit.scala 36:14:@532.4 ControlUnit.scala 57:16:@575.4 ControlUnit.scala 75:20:@592.6]
  assign io_InstructionOrData = _T_112 ? 1'h1 : _GEN_157; // @[ControlUnit.scala 37:24:@533.4 ControlUnit.scala 58:26:@576.4 ControlUnit.scala 74:30:@591.6 ControlUnit.scala 174:34:@722.16 ControlUnit.scala 179:34:@729.18 ControlUnit.scala 184:34:@736.20 ControlUnit.scala 189:34:@743.22]
  assign io_RegDst = _T_112 ? 1'h1 : _GEN_155; // @[ControlUnit.scala 59:15:@577.4 ControlUnit.scala 170:23:@716.14 ControlUnit.scala 195:23:@751.24 ControlUnit.scala 199:23:@757.26 ControlUnit.scala 203:23:@763.28 ControlUnit.scala 207:23:@769.30 ControlUnit.scala 211:23:@775.32 ControlUnit.scala 218:19:@783.14]
  assign io_MemOrALUOut = _T_112 ? 1'h0 : _GEN_156; // @[ControlUnit.scala 60:20:@578.4 ControlUnit.scala 171:28:@717.14 ControlUnit.scala 185:28:@737.20 ControlUnit.scala 190:28:@744.22 ControlUnit.scala 216:24:@781.14]
  assign io_MemWrite = _T_112 ? 1'h0 : _GEN_158; // @[ControlUnit.scala 61:17:@579.4 ControlUnit.scala 175:25:@723.16 ControlUnit.scala 180:25:@730.18]
  assign io_ALUOp = _T_112 ? 2'h0 : _GEN_145; // @[ControlUnit.scala 62:14:@580.4 ControlUnit.scala 78:18:@597.8 ControlUnit.scala 86:22:@607.12 ControlUnit.scala 91:22:@614.14 ControlUnit.scala 97:22:@622.16 ControlUnit.scala 103:22:@630.18 ControlUnit.scala 109:22:@638.20 ControlUnit.scala 116:22:@647.22 ControlUnit.scala 124:22:@657.24 ControlUnit.scala 135:22:@672.28 ControlUnit.scala 141:22:@680.30 ControlUnit.scala 147:22:@688.32 ControlUnit.scala 153:22:@696.34 ControlUnit.scala 159:22:@704.36]
  assign io_ALUSrc1 = _T_112 ? 1'h0 : _GEN_146; // @[ControlUnit.scala 63:16:@581.4 ControlUnit.scala 79:20:@598.8 ControlUnit.scala 87:24:@608.12 ControlUnit.scala 92:24:@615.14 ControlUnit.scala 98:24:@623.16 ControlUnit.scala 104:24:@631.18 ControlUnit.scala 110:24:@639.20 ControlUnit.scala 119:24:@650.22 ControlUnit.scala 127:24:@660.24 ControlUnit.scala 136:24:@673.28 ControlUnit.scala 142:24:@681.30 ControlUnit.scala 148:24:@689.32 ControlUnit.scala 154:24:@697.34 ControlUnit.scala 160:24:@705.36]
  assign io_ALUSrc2 = _T_112 ? 2'h2 : _GEN_147; // @[ControlUnit.scala 64:16:@582.4 ControlUnit.scala 80:20:@599.8 ControlUnit.scala 88:24:@609.12 ControlUnit.scala 93:24:@616.14 ControlUnit.scala 99:24:@624.16 ControlUnit.scala 105:24:@632.18 ControlUnit.scala 111:24:@640.20 ControlUnit.scala 120:24:@651.22 ControlUnit.scala 128:24:@661.24 ControlUnit.scala 137:24:@674.28 ControlUnit.scala 143:24:@682.30 ControlUnit.scala 149:24:@690.32 ControlUnit.scala 155:24:@698.34 ControlUnit.scala 161:24:@706.36]
  assign io_RegWrite = _T_112 ? 1'h0 : _GEN_154; // @[ControlUnit.scala 65:17:@583.4 ControlUnit.scala 169:25:@715.14 ControlUnit.scala 194:25:@750.24 ControlUnit.scala 198:25:@756.26 ControlUnit.scala 202:25:@762.28 ControlUnit.scala 206:25:@768.30 ControlUnit.scala 210:25:@774.32 ControlUnit.scala 217:21:@782.14]
  assign io_BeqOrBne = _T_112 ? 1'h1 : _GEN_150; // @[ControlUnit.scala 66:17:@584.4 ControlUnit.scala 115:25:@646.22 ControlUnit.scala 123:25:@656.24]
  assign io_SignedOrZero = _T_112 ? 1'h1 : _GEN_148; // @[ControlUnit.scala 67:21:@585.4 ControlUnit.scala 81:25:@600.8 ControlUnit.scala 138:29:@675.28 ControlUnit.scala 144:29:@683.30 ControlUnit.scala 150:29:@691.32 ControlUnit.scala 156:29:@699.34 ControlUnit.scala 162:29:@707.36]
  assign io_SizeSel = _T_112 ? 1'h0 : _GEN_149; // @[ControlUnit.scala 68:16:@586.4 ControlUnit.scala 94:24:@617.14 ControlUnit.scala 100:24:@625.16 ControlUnit.scala 106:24:@633.18 ControlUnit.scala 112:24:@641.20 ControlUnit.scala 176:24:@724.16 ControlUnit.scala 181:24:@731.18 ControlUnit.scala 186:24:@738.20 ControlUnit.scala 191:24:@745.22]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  State = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      State <= 3'h0;
    end else begin
      if (_T_114) begin
        State <= 3'h1;
      end else begin
        if (_T_112) begin
          State <= 3'h2;
        end else begin
          if (_T_110) begin
            State <= 3'h3;
          end else begin
            if (_T_108) begin
              if (_T_66) begin
                State <= 3'h1;
              end else begin
                if (_T_64) begin
                  State <= 3'h1;
                end else begin
                  if (_T_62) begin
                    State <= 3'h1;
                  end else begin
                    State <= 3'h4;
                  end
                end
              end
            end else begin
              if (_T_106) begin
                if (_T_100) begin
                  State <= 3'h1;
                end else begin
                  if (_T_98) begin
                    State <= 3'h1;
                  end else begin
                    if (_T_96) begin
                      State <= 3'h1;
                    end else begin
                      if (_T_94) begin
                        State <= 3'h1;
                      end else begin
                        if (_T_92) begin
                          State <= 3'h1;
                        end else begin
                          if (_T_90) begin
                            State <= 3'h1;
                          end else begin
                            if (_T_88) begin
                              State <= 3'h1;
                            end else begin
                              if (_T_86) begin
                                State <= 3'h1;
                              end else begin
                                State <= 3'h5;
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end else begin
                if (_T_104) begin
                  State <= 3'h1;
                end else begin
                  State <= 3'h0;
                end
              end
            end
          end
        end
      end
    end
  end
endmodule
module ALUControl( // @[:@786.2]
  input  [1:0] io_ALUOp, // @[:@789.4]
  input  [5:0] io_OpCode, // @[:@789.4]
  input  [5:0] io_Funct, // @[:@789.4]
  output [3:0] io_ALUCtl // @[:@789.4]
);
  wire  _T_34; // @[Mux.scala 46:19:@791.4]
  wire [3:0] _T_35; // @[Mux.scala 46:16:@792.4]
  wire  _T_36; // @[Mux.scala 46:19:@793.4]
  wire [3:0] _T_37; // @[Mux.scala 46:16:@794.4]
  wire  _T_38; // @[Mux.scala 46:19:@795.4]
  wire [3:0] _T_39; // @[Mux.scala 46:16:@796.4]
  wire  _T_40; // @[Mux.scala 46:19:@797.4]
  wire [3:0] _T_41; // @[Mux.scala 46:16:@798.4]
  wire  _T_42; // @[Mux.scala 46:19:@799.4]
  wire [3:0] _T_43; // @[Mux.scala 46:16:@800.4]
  wire  _T_44; // @[Mux.scala 46:19:@801.4]
  wire [3:0] _T_45; // @[Mux.scala 46:16:@802.4]
  wire  _T_46; // @[Mux.scala 46:19:@803.4]
  wire [3:0] _T_47; // @[Mux.scala 46:16:@804.4]
  wire  _T_60; // @[Mux.scala 46:19:@805.4]
  wire [3:0] _T_61; // @[Mux.scala 46:16:@806.4]
  wire  _T_62; // @[Mux.scala 46:19:@807.4]
  wire [3:0] _T_63; // @[Mux.scala 46:16:@808.4]
  wire  _T_64; // @[Mux.scala 46:19:@809.4]
  wire [3:0] _T_65; // @[Mux.scala 46:16:@810.4]
  wire  _T_66; // @[Mux.scala 46:19:@811.4]
  wire [3:0] _T_67; // @[Mux.scala 46:16:@812.4]
  wire  _T_68; // @[Mux.scala 46:19:@813.4]
  wire [3:0] _T_69; // @[Mux.scala 46:16:@814.4]
  wire  _T_70; // @[Mux.scala 46:19:@815.4]
  wire [3:0] _T_71; // @[Mux.scala 46:16:@816.4]
  wire  _T_72; // @[Mux.scala 46:19:@817.4]
  wire [3:0] _T_73; // @[Mux.scala 46:16:@818.4]
  wire  _T_74; // @[Mux.scala 46:19:@819.4]
  wire [3:0] _T_75; // @[Mux.scala 46:16:@820.4]
  wire  _T_76; // @[Mux.scala 46:19:@821.4]
  assign _T_34 = 6'h27 == io_Funct; // @[Mux.scala 46:19:@791.4]
  assign _T_35 = _T_34 ? 4'hc : 4'h2; // @[Mux.scala 46:16:@792.4]
  assign _T_36 = 6'h26 == io_Funct; // @[Mux.scala 46:19:@793.4]
  assign _T_37 = _T_36 ? 4'ha : _T_35; // @[Mux.scala 46:16:@794.4]
  assign _T_38 = 6'h2a == io_Funct; // @[Mux.scala 46:19:@795.4]
  assign _T_39 = _T_38 ? 4'h7 : _T_37; // @[Mux.scala 46:16:@796.4]
  assign _T_40 = 6'h25 == io_Funct; // @[Mux.scala 46:19:@797.4]
  assign _T_41 = _T_40 ? 4'h1 : _T_39; // @[Mux.scala 46:16:@798.4]
  assign _T_42 = 6'h24 == io_Funct; // @[Mux.scala 46:19:@799.4]
  assign _T_43 = _T_42 ? 4'h0 : _T_41; // @[Mux.scala 46:16:@800.4]
  assign _T_44 = 6'h22 == io_Funct; // @[Mux.scala 46:19:@801.4]
  assign _T_45 = _T_44 ? 4'h6 : _T_43; // @[Mux.scala 46:16:@802.4]
  assign _T_46 = 6'h20 == io_Funct; // @[Mux.scala 46:19:@803.4]
  assign _T_47 = _T_46 ? 4'h2 : _T_45; // @[Mux.scala 46:16:@804.4]
  assign _T_60 = 6'he == io_OpCode; // @[Mux.scala 46:19:@805.4]
  assign _T_61 = _T_60 ? 4'ha : 4'h0; // @[Mux.scala 46:16:@806.4]
  assign _T_62 = 6'ha == io_OpCode; // @[Mux.scala 46:19:@807.4]
  assign _T_63 = _T_62 ? 4'h7 : _T_61; // @[Mux.scala 46:16:@808.4]
  assign _T_64 = 6'h8 == io_OpCode; // @[Mux.scala 46:19:@809.4]
  assign _T_65 = _T_64 ? 4'h2 : _T_63; // @[Mux.scala 46:16:@810.4]
  assign _T_66 = 6'hd == io_OpCode; // @[Mux.scala 46:19:@811.4]
  assign _T_67 = _T_66 ? 4'h1 : _T_65; // @[Mux.scala 46:16:@812.4]
  assign _T_68 = 6'hc == io_OpCode; // @[Mux.scala 46:19:@813.4]
  assign _T_69 = _T_68 ? 4'h0 : _T_67; // @[Mux.scala 46:16:@814.4]
  assign _T_70 = 2'h3 == io_ALUOp; // @[Mux.scala 46:19:@815.4]
  assign _T_71 = _T_70 ? _T_69 : 4'h2; // @[Mux.scala 46:16:@816.4]
  assign _T_72 = 2'h2 == io_ALUOp; // @[Mux.scala 46:19:@817.4]
  assign _T_73 = _T_72 ? _T_47 : _T_71; // @[Mux.scala 46:16:@818.4]
  assign _T_74 = 2'h1 == io_ALUOp; // @[Mux.scala 46:19:@819.4]
  assign _T_75 = _T_74 ? 4'h6 : _T_73; // @[Mux.scala 46:16:@820.4]
  assign _T_76 = 2'h0 == io_ALUOp; // @[Mux.scala 46:19:@821.4]
  assign io_ALUCtl = _T_76 ? 4'h2 : _T_75; // @[ALUControl.scala 19:13:@823.4]
endmodule
module SegmentDisplay( // @[:@825.2]
  input        clock, // @[:@826.4]
  input        reset, // @[:@827.4]
  input  [3:0] io_data_0, // @[:@828.4]
  input  [3:0] io_data_1, // @[:@828.4]
  input  [3:0] io_data_2, // @[:@828.4]
  input  [3:0] io_data_3, // @[:@828.4]
  input  [3:0] io_data_4, // @[:@828.4]
  input  [3:0] io_data_5, // @[:@828.4]
  input  [3:0] io_data_6, // @[:@828.4]
  input  [3:0] io_data_7, // @[:@828.4]
  output [6:0] io_seg, // @[:@828.4]
  output [7:0] io_an // @[:@828.4]
);
  reg [7:0] anSig; // @[SegmentDisplay.scala 14:22:@830.4]
  reg [31:0] _RAND_0;
  wire  _T_40; // @[SegmentDisplay.scala 15:22:@831.4]
  wire [6:0] _T_41; // @[SegmentDisplay.scala 15:47:@832.4]
  wire [7:0] _T_43; // @[SegmentDisplay.scala 15:15:@833.4]
  reg [2:0] count; // @[SegmentDisplay.scala 16:22:@835.4]
  reg [31:0] _RAND_1;
  wire [3:0] _T_47; // @[SegmentDisplay.scala 17:18:@836.4]
  wire [3:0] _T_48; // @[SegmentDisplay.scala 17:18:@837.4]
  wire [2:0] _T_49; // @[SegmentDisplay.scala 17:18:@838.4]
  wire [7:0] _T_50; // @[SegmentDisplay.scala 19:22:@840.4]
  wire  _T_51; // @[SegmentDisplay.scala 19:22:@841.4]
  wire [3:0] _GEN_1; // @[Mux.scala 46:19:@843.4]
  wire [3:0] _GEN_2; // @[Mux.scala 46:19:@843.4]
  wire [3:0] _GEN_3; // @[Mux.scala 46:19:@843.4]
  wire [3:0] _GEN_4; // @[Mux.scala 46:19:@843.4]
  wire [3:0] _GEN_5; // @[Mux.scala 46:19:@843.4]
  wire [3:0] _GEN_6; // @[Mux.scala 46:19:@843.4]
  wire [3:0] _GEN_7; // @[Mux.scala 46:19:@843.4]
  wire  _T_88; // @[Mux.scala 46:19:@843.4]
  wire [6:0] _T_89; // @[Mux.scala 46:16:@844.4]
  wire  _T_90; // @[Mux.scala 46:19:@845.4]
  wire [6:0] _T_91; // @[Mux.scala 46:16:@846.4]
  wire  _T_92; // @[Mux.scala 46:19:@847.4]
  wire [6:0] _T_93; // @[Mux.scala 46:16:@848.4]
  wire  _T_94; // @[Mux.scala 46:19:@849.4]
  wire [6:0] _T_95; // @[Mux.scala 46:16:@850.4]
  wire  _T_96; // @[Mux.scala 46:19:@851.4]
  wire [6:0] _T_97; // @[Mux.scala 46:16:@852.4]
  wire  _T_98; // @[Mux.scala 46:19:@853.4]
  wire [6:0] _T_99; // @[Mux.scala 46:16:@854.4]
  wire  _T_100; // @[Mux.scala 46:19:@855.4]
  wire [6:0] _T_101; // @[Mux.scala 46:16:@856.4]
  wire  _T_102; // @[Mux.scala 46:19:@857.4]
  wire [6:0] _T_103; // @[Mux.scala 46:16:@858.4]
  wire  _T_104; // @[Mux.scala 46:19:@859.4]
  wire [6:0] _T_105; // @[Mux.scala 46:16:@860.4]
  wire  _T_106; // @[Mux.scala 46:19:@861.4]
  wire [6:0] _T_107; // @[Mux.scala 46:16:@862.4]
  wire  _T_108; // @[Mux.scala 46:19:@863.4]
  wire [6:0] _T_109; // @[Mux.scala 46:16:@864.4]
  wire  _T_110; // @[Mux.scala 46:19:@865.4]
  wire [6:0] _T_111; // @[Mux.scala 46:16:@866.4]
  wire  _T_112; // @[Mux.scala 46:19:@867.4]
  wire [6:0] _T_113; // @[Mux.scala 46:16:@868.4]
  wire  _T_114; // @[Mux.scala 46:19:@869.4]
  wire [6:0] _T_115; // @[Mux.scala 46:16:@870.4]
  wire  _T_116; // @[Mux.scala 46:19:@871.4]
  wire [6:0] _T_117; // @[Mux.scala 46:16:@872.4]
  wire  _T_118; // @[Mux.scala 46:19:@873.4]
  wire [6:0] _T_119; // @[Mux.scala 46:16:@874.4]
  assign _T_40 = anSig != 8'h1; // @[SegmentDisplay.scala 15:22:@831.4]
  assign _T_41 = anSig[7:1]; // @[SegmentDisplay.scala 15:47:@832.4]
  assign _T_43 = _T_40 ? {{1'd0}, _T_41} : 8'h80; // @[SegmentDisplay.scala 15:15:@833.4]
  assign _T_47 = count - 3'h1; // @[SegmentDisplay.scala 17:18:@836.4]
  assign _T_48 = $unsigned(_T_47); // @[SegmentDisplay.scala 17:18:@837.4]
  assign _T_49 = _T_48[2:0]; // @[SegmentDisplay.scala 17:18:@838.4]
  assign _T_50 = 8'hff >> count; // @[SegmentDisplay.scala 19:22:@840.4]
  assign _T_51 = _T_50[0]; // @[SegmentDisplay.scala 19:22:@841.4]
  assign _GEN_1 = 3'h1 == count ? io_data_1 : io_data_0; // @[Mux.scala 46:19:@843.4]
  assign _GEN_2 = 3'h2 == count ? io_data_2 : _GEN_1; // @[Mux.scala 46:19:@843.4]
  assign _GEN_3 = 3'h3 == count ? io_data_3 : _GEN_2; // @[Mux.scala 46:19:@843.4]
  assign _GEN_4 = 3'h4 == count ? io_data_4 : _GEN_3; // @[Mux.scala 46:19:@843.4]
  assign _GEN_5 = 3'h5 == count ? io_data_5 : _GEN_4; // @[Mux.scala 46:19:@843.4]
  assign _GEN_6 = 3'h6 == count ? io_data_6 : _GEN_5; // @[Mux.scala 46:19:@843.4]
  assign _GEN_7 = 3'h7 == count ? io_data_7 : _GEN_6; // @[Mux.scala 46:19:@843.4]
  assign _T_88 = 4'hf == _GEN_7; // @[Mux.scala 46:19:@843.4]
  assign _T_89 = _T_88 ? 7'he : 7'h7f; // @[Mux.scala 46:16:@844.4]
  assign _T_90 = 4'he == _GEN_7; // @[Mux.scala 46:19:@845.4]
  assign _T_91 = _T_90 ? 7'h6 : _T_89; // @[Mux.scala 46:16:@846.4]
  assign _T_92 = 4'hd == _GEN_7; // @[Mux.scala 46:19:@847.4]
  assign _T_93 = _T_92 ? 7'h21 : _T_91; // @[Mux.scala 46:16:@848.4]
  assign _T_94 = 4'hc == _GEN_7; // @[Mux.scala 46:19:@849.4]
  assign _T_95 = _T_94 ? 7'h46 : _T_93; // @[Mux.scala 46:16:@850.4]
  assign _T_96 = 4'hb == _GEN_7; // @[Mux.scala 46:19:@851.4]
  assign _T_97 = _T_96 ? 7'h3 : _T_95; // @[Mux.scala 46:16:@852.4]
  assign _T_98 = 4'ha == _GEN_7; // @[Mux.scala 46:19:@853.4]
  assign _T_99 = _T_98 ? 7'h8 : _T_97; // @[Mux.scala 46:16:@854.4]
  assign _T_100 = 4'h9 == _GEN_7; // @[Mux.scala 46:19:@855.4]
  assign _T_101 = _T_100 ? 7'h10 : _T_99; // @[Mux.scala 46:16:@856.4]
  assign _T_102 = 4'h8 == _GEN_7; // @[Mux.scala 46:19:@857.4]
  assign _T_103 = _T_102 ? 7'h0 : _T_101; // @[Mux.scala 46:16:@858.4]
  assign _T_104 = 4'h7 == _GEN_7; // @[Mux.scala 46:19:@859.4]
  assign _T_105 = _T_104 ? 7'h78 : _T_103; // @[Mux.scala 46:16:@860.4]
  assign _T_106 = 4'h6 == _GEN_7; // @[Mux.scala 46:19:@861.4]
  assign _T_107 = _T_106 ? 7'h2 : _T_105; // @[Mux.scala 46:16:@862.4]
  assign _T_108 = 4'h5 == _GEN_7; // @[Mux.scala 46:19:@863.4]
  assign _T_109 = _T_108 ? 7'h12 : _T_107; // @[Mux.scala 46:16:@864.4]
  assign _T_110 = 4'h4 == _GEN_7; // @[Mux.scala 46:19:@865.4]
  assign _T_111 = _T_110 ? 7'h19 : _T_109; // @[Mux.scala 46:16:@866.4]
  assign _T_112 = 4'h3 == _GEN_7; // @[Mux.scala 46:19:@867.4]
  assign _T_113 = _T_112 ? 7'h30 : _T_111; // @[Mux.scala 46:16:@868.4]
  assign _T_114 = 4'h2 == _GEN_7; // @[Mux.scala 46:19:@869.4]
  assign _T_115 = _T_114 ? 7'h24 : _T_113; // @[Mux.scala 46:16:@870.4]
  assign _T_116 = 4'h1 == _GEN_7; // @[Mux.scala 46:19:@871.4]
  assign _T_117 = _T_116 ? 7'h79 : _T_115; // @[Mux.scala 46:16:@872.4]
  assign _T_118 = 4'h0 == _GEN_7; // @[Mux.scala 46:19:@873.4]
  assign _T_119 = _T_118 ? 7'h40 : _T_117; // @[Mux.scala 46:16:@874.4]
  assign io_seg = _T_51 ? _T_119 : 7'h7f; // @[SegmentDisplay.scala 19:10:@876.4]
  assign io_an = ~ anSig; // @[SegmentDisplay.scala 26:9:@878.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  anSig = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  count = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      anSig <= 8'h80;
    end else begin
      if (_T_40) begin
        anSig <= {{1'd0}, _T_41};
      end else begin
        anSig <= 8'h80;
      end
    end
    if (reset) begin
      count <= 3'h7;
    end else begin
      count <= _T_49;
    end
  end
endmodule
module Top( // @[:@880.2]
  input         clock, // @[:@881.4]
  input         reset, // @[:@882.4]
  input         io_Reset, // @[:@883.4]
  input  [11:0] io_Switches, // @[:@883.4]
  input         io_Paint, // @[:@883.4]
  input  [3:0]  io_Buttons, // @[:@883.4]
  input         io_RegOrMem, // @[:@883.4]
  input         io_Step, // @[:@883.4]
  input         io_Countinue, // @[:@883.4]
  output        io_hs, // @[:@883.4]
  output        io_vs, // @[:@883.4]
  output [3:0]  io_r, // @[:@883.4]
  output [3:0]  io_g, // @[:@883.4]
  output [3:0]  io_b, // @[:@883.4]
  output [7:0]  io_AN, // @[:@883.4]
  output [6:0]  io_SEG, // @[:@883.4]
  output [15:0] io_PC // @[:@883.4]
);
  wire  stable_clock; // @[Top.scala 36:22:@897.4]
  wire  stable_io_in; // @[Top.scala 36:22:@897.4]
  wire  stable_io_out; // @[Top.scala 36:22:@897.4]
  wire  stable0_clock; // @[Top.scala 38:23:@901.4]
  wire  stable0_io_in; // @[Top.scala 38:23:@901.4]
  wire  stable0_io_out; // @[Top.scala 38:23:@901.4]
  wire  stable1_clock; // @[Top.scala 40:23:@907.4]
  wire  stable1_io_in; // @[Top.scala 40:23:@907.4]
  wire  stable1_io_out; // @[Top.scala 40:23:@907.4]
  wire  stable2_clock; // @[Top.scala 42:23:@913.4]
  wire  stable2_io_in; // @[Top.scala 42:23:@913.4]
  wire  stable2_io_out; // @[Top.scala 42:23:@913.4]
  wire  stable3_clock; // @[Top.scala 44:23:@919.4]
  wire  stable3_io_in; // @[Top.scala 44:23:@919.4]
  wire  stable3_io_out; // @[Top.scala 44:23:@919.4]
  wire  DP_clock; // @[Top.scala 50:74:@932.4]
  wire  DP_reset; // @[Top.scala 50:74:@932.4]
  wire  DP_io_PCWrite; // @[Top.scala 50:74:@932.4]
  wire  DP_io_PCWriteCond; // @[Top.scala 50:74:@932.4]
  wire [1:0] DP_io_PCSrc; // @[Top.scala 50:74:@932.4]
  wire  DP_io_IRWrite; // @[Top.scala 50:74:@932.4]
  wire  DP_io_InstructionOrData; // @[Top.scala 50:74:@932.4]
  wire  DP_io_RegDst; // @[Top.scala 50:74:@932.4]
  wire  DP_io_MemOrALUOut; // @[Top.scala 50:74:@932.4]
  wire  DP_io_MemWrite; // @[Top.scala 50:74:@932.4]
  wire  DP_io_ALUSrc1; // @[Top.scala 50:74:@932.4]
  wire [1:0] DP_io_ALUSrc2; // @[Top.scala 50:74:@932.4]
  wire [3:0] DP_io_ALUCtl; // @[Top.scala 50:74:@932.4]
  wire  DP_io_RegWrite; // @[Top.scala 50:74:@932.4]
  wire  DP_io_BeqOrBne; // @[Top.scala 50:74:@932.4]
  wire  DP_io_SignedOrZero; // @[Top.scala 50:74:@932.4]
  wire  DP_io_SizeSel; // @[Top.scala 50:74:@932.4]
  wire [11:0] DP_io_Switches; // @[Top.scala 50:74:@932.4]
  wire [3:0] DP_io_Buttons; // @[Top.scala 50:74:@932.4]
  wire  DP_io_Paint; // @[Top.scala 50:74:@932.4]
  wire [5:0] DP_io_OpCode; // @[Top.scala 50:74:@932.4]
  wire [5:0] DP_io_Funct; // @[Top.scala 50:74:@932.4]
  wire  DP_io_VGAClock; // @[Top.scala 50:74:@932.4]
  wire  DP_io_hs; // @[Top.scala 50:74:@932.4]
  wire  DP_io_vs; // @[Top.scala 50:74:@932.4]
  wire [3:0] DP_io_r; // @[Top.scala 50:74:@932.4]
  wire [3:0] DP_io_g; // @[Top.scala 50:74:@932.4]
  wire [3:0] DP_io_b; // @[Top.scala 50:74:@932.4]
  wire [11:0] DP_io__DebugAddr; // @[Top.scala 50:74:@932.4]
  wire [31:0] DP_io__DebugRegData; // @[Top.scala 50:74:@932.4]
  wire [31:0] DP_io__DebugMemData; // @[Top.scala 50:74:@932.4]
  wire [31:0] DP_io__PC; // @[Top.scala 50:74:@932.4]
  wire  CU_clock; // @[Top.scala 51:74:@938.4]
  wire  CU_reset; // @[Top.scala 51:74:@938.4]
  wire [5:0] CU_io_OpCode; // @[Top.scala 51:74:@938.4]
  wire  CU_io_PCWrite; // @[Top.scala 51:74:@938.4]
  wire  CU_io_PCWriteCond; // @[Top.scala 51:74:@938.4]
  wire [1:0] CU_io_PCSrc; // @[Top.scala 51:74:@938.4]
  wire  CU_io_IRWrite; // @[Top.scala 51:74:@938.4]
  wire  CU_io_InstructionOrData; // @[Top.scala 51:74:@938.4]
  wire  CU_io_RegDst; // @[Top.scala 51:74:@938.4]
  wire  CU_io_MemOrALUOut; // @[Top.scala 51:74:@938.4]
  wire  CU_io_MemWrite; // @[Top.scala 51:74:@938.4]
  wire [1:0] CU_io_ALUOp; // @[Top.scala 51:74:@938.4]
  wire  CU_io_ALUSrc1; // @[Top.scala 51:74:@938.4]
  wire [1:0] CU_io_ALUSrc2; // @[Top.scala 51:74:@938.4]
  wire  CU_io_RegWrite; // @[Top.scala 51:74:@938.4]
  wire  CU_io_BeqOrBne; // @[Top.scala 51:74:@938.4]
  wire  CU_io_SignedOrZero; // @[Top.scala 51:74:@938.4]
  wire  CU_io_SizeSel; // @[Top.scala 51:74:@938.4]
  wire [1:0] ALUCU_io_ALUOp; // @[Top.scala 52:77:@944.4]
  wire [5:0] ALUCU_io_OpCode; // @[Top.scala 52:77:@944.4]
  wire [5:0] ALUCU_io_Funct; // @[Top.scala 52:77:@944.4]
  wire [3:0] ALUCU_io_ALUCtl; // @[Top.scala 52:77:@944.4]
  wire  SegDisplay_clock; // @[Top.scala 53:54:@948.4]
  wire  SegDisplay_reset; // @[Top.scala 53:54:@948.4]
  wire [3:0] SegDisplay_io_data_0; // @[Top.scala 53:54:@948.4]
  wire [3:0] SegDisplay_io_data_1; // @[Top.scala 53:54:@948.4]
  wire [3:0] SegDisplay_io_data_2; // @[Top.scala 53:54:@948.4]
  wire [3:0] SegDisplay_io_data_3; // @[Top.scala 53:54:@948.4]
  wire [3:0] SegDisplay_io_data_4; // @[Top.scala 53:54:@948.4]
  wire [3:0] SegDisplay_io_data_5; // @[Top.scala 53:54:@948.4]
  wire [3:0] SegDisplay_io_data_6; // @[Top.scala 53:54:@948.4]
  wire [3:0] SegDisplay_io_data_7; // @[Top.scala 53:54:@948.4]
  wire [6:0] SegDisplay_io_seg; // @[Top.scala 53:54:@948.4]
  wire [7:0] SegDisplay_io_an; // @[Top.scala 53:54:@948.4]
  reg [31:0] counter1; // @[Top.scala 29:25:@885.4]
  reg [31:0] _RAND_0;
  wire  _T_38; // @[Top.scala 30:28:@886.4]
  wire [32:0] _T_41; // @[Top.scala 30:56:@887.4]
  wire [31:0] _T_42; // @[Top.scala 30:56:@888.4]
  wire [31:0] _T_43; // @[Top.scala 30:18:@889.4]
  reg  clk500; // @[Top.scala 31:23:@892.4]
  reg [31:0] _RAND_1;
  reg  clk50M; // @[Top.scala 33:23:@894.4]
  reg [31:0] _RAND_2;
  wire  _T_49; // @[Top.scala 34:13:@895.4]
  wire  _T_59; // @[Top.scala 48:46:@926.4]
  wire  CPUClock; // @[Top.scala 48:18:@927.4]
  wire [31:0] Data; // @[Top.scala 79:17:@971.4]
  wire [9:0] _T_71; // @[Top.scala 80:34:@972.4]
  wire [1:0] _T_83; // @[Cat.scala 30:58:@1003.4]
  wire [1:0] _T_84; // @[Cat.scala 30:58:@1004.4]
  Debounce stable ( // @[Top.scala 36:22:@897.4]
    .clock(stable_clock),
    .io_in(stable_io_in),
    .io_out(stable_io_out)
  );
  Debounce stable0 ( // @[Top.scala 38:23:@901.4]
    .clock(stable0_clock),
    .io_in(stable0_io_in),
    .io_out(stable0_io_out)
  );
  Debounce stable1 ( // @[Top.scala 40:23:@907.4]
    .clock(stable1_clock),
    .io_in(stable1_io_in),
    .io_out(stable1_io_out)
  );
  Debounce stable2 ( // @[Top.scala 42:23:@913.4]
    .clock(stable2_clock),
    .io_in(stable2_io_in),
    .io_out(stable2_io_out)
  );
  Debounce stable3 ( // @[Top.scala 44:23:@919.4]
    .clock(stable3_clock),
    .io_in(stable3_io_in),
    .io_out(stable3_io_out)
  );
  DataPath DP ( // @[Top.scala 50:74:@932.4]
    .clock(DP_clock),
    .reset(DP_reset),
    .io_PCWrite(DP_io_PCWrite),
    .io_PCWriteCond(DP_io_PCWriteCond),
    .io_PCSrc(DP_io_PCSrc),
    .io_IRWrite(DP_io_IRWrite),
    .io_InstructionOrData(DP_io_InstructionOrData),
    .io_RegDst(DP_io_RegDst),
    .io_MemOrALUOut(DP_io_MemOrALUOut),
    .io_MemWrite(DP_io_MemWrite),
    .io_ALUSrc1(DP_io_ALUSrc1),
    .io_ALUSrc2(DP_io_ALUSrc2),
    .io_ALUCtl(DP_io_ALUCtl),
    .io_RegWrite(DP_io_RegWrite),
    .io_BeqOrBne(DP_io_BeqOrBne),
    .io_SignedOrZero(DP_io_SignedOrZero),
    .io_SizeSel(DP_io_SizeSel),
    .io_Switches(DP_io_Switches),
    .io_Buttons(DP_io_Buttons),
    .io_Paint(DP_io_Paint),
    .io_OpCode(DP_io_OpCode),
    .io_Funct(DP_io_Funct),
    .io_VGAClock(DP_io_VGAClock),
    .io_hs(DP_io_hs),
    .io_vs(DP_io_vs),
    .io_r(DP_io_r),
    .io_g(DP_io_g),
    .io_b(DP_io_b),
    .io__DebugAddr(DP_io__DebugAddr),
    .io__DebugRegData(DP_io__DebugRegData),
    .io__DebugMemData(DP_io__DebugMemData),
    .io__PC(DP_io__PC)
  );
  ControlUnit CU ( // @[Top.scala 51:74:@938.4]
    .clock(CU_clock),
    .reset(CU_reset),
    .io_OpCode(CU_io_OpCode),
    .io_PCWrite(CU_io_PCWrite),
    .io_PCWriteCond(CU_io_PCWriteCond),
    .io_PCSrc(CU_io_PCSrc),
    .io_IRWrite(CU_io_IRWrite),
    .io_InstructionOrData(CU_io_InstructionOrData),
    .io_RegDst(CU_io_RegDst),
    .io_MemOrALUOut(CU_io_MemOrALUOut),
    .io_MemWrite(CU_io_MemWrite),
    .io_ALUOp(CU_io_ALUOp),
    .io_ALUSrc1(CU_io_ALUSrc1),
    .io_ALUSrc2(CU_io_ALUSrc2),
    .io_RegWrite(CU_io_RegWrite),
    .io_BeqOrBne(CU_io_BeqOrBne),
    .io_SignedOrZero(CU_io_SignedOrZero),
    .io_SizeSel(CU_io_SizeSel)
  );
  ALUControl ALUCU ( // @[Top.scala 52:77:@944.4]
    .io_ALUOp(ALUCU_io_ALUOp),
    .io_OpCode(ALUCU_io_OpCode),
    .io_Funct(ALUCU_io_Funct),
    .io_ALUCtl(ALUCU_io_ALUCtl)
  );
  SegmentDisplay SegDisplay ( // @[Top.scala 53:54:@948.4]
    .clock(SegDisplay_clock),
    .reset(SegDisplay_reset),
    .io_data_0(SegDisplay_io_data_0),
    .io_data_1(SegDisplay_io_data_1),
    .io_data_2(SegDisplay_io_data_2),
    .io_data_3(SegDisplay_io_data_3),
    .io_data_4(SegDisplay_io_data_4),
    .io_data_5(SegDisplay_io_data_5),
    .io_data_6(SegDisplay_io_data_6),
    .io_data_7(SegDisplay_io_data_7),
    .io_seg(SegDisplay_io_seg),
    .io_an(SegDisplay_io_an)
  );
  assign _T_38 = counter1 == 32'h30d3f; // @[Top.scala 30:28:@886.4]
  assign _T_41 = counter1 + 32'h1; // @[Top.scala 30:56:@887.4]
  assign _T_42 = counter1 + 32'h1; // @[Top.scala 30:56:@888.4]
  assign _T_43 = _T_38 ? 32'h0 : _T_42; // @[Top.scala 30:18:@889.4]
  assign _T_49 = ~ clk50M; // @[Top.scala 34:13:@895.4]
  assign _T_59 = $unsigned(clock); // @[Top.scala 48:46:@926.4]
  assign CPUClock = io_Countinue ? _T_59 : stable_io_out; // @[Top.scala 48:18:@927.4]
  assign Data = io_RegOrMem ? DP_io__DebugRegData : DP_io__DebugMemData; // @[Top.scala 79:17:@971.4]
  assign _T_71 = io_Switches[9:0]; // @[Top.scala 80:34:@972.4]
  assign _T_83 = {stable1_io_out,stable0_io_out}; // @[Cat.scala 30:58:@1003.4]
  assign _T_84 = {stable3_io_out,stable2_io_out}; // @[Cat.scala 30:58:@1004.4]
  assign io_hs = DP_io_hs; // @[Top.scala 92:9:@997.4]
  assign io_vs = DP_io_vs; // @[Top.scala 93:9:@998.4]
  assign io_r = DP_io_r; // @[Top.scala 94:8:@999.4]
  assign io_g = DP_io_g; // @[Top.scala 95:8:@1000.4]
  assign io_b = DP_io_b; // @[Top.scala 96:8:@1001.4]
  assign io_AN = SegDisplay_io_an; // @[Top.scala 86:9:@991.4]
  assign io_SEG = SegDisplay_io_seg; // @[Top.scala 87:10:@992.4]
  assign io_PC = DP_io__PC[15:0]; // @[Top.scala 89:9:@994.4]
  assign stable_clock = clock; // @[:@898.4]
  assign stable_io_in = io_Step; // @[Top.scala 37:16:@900.4]
  assign stable0_clock = clock; // @[:@902.4]
  assign stable0_io_in = io_Buttons[0]; // @[Top.scala 39:17:@906.4]
  assign stable1_clock = clock; // @[:@908.4]
  assign stable1_io_in = io_Buttons[1]; // @[Top.scala 41:17:@912.4]
  assign stable2_clock = clock; // @[:@914.4]
  assign stable2_io_in = io_Buttons[2]; // @[Top.scala 43:17:@918.4]
  assign stable3_clock = clock; // @[:@920.4]
  assign stable3_io_in = io_Buttons[3]; // @[Top.scala 45:17:@924.4]
  assign DP_clock = CPUClock; // @[:@933.4]
  assign DP_reset = ~ io_Reset; // @[:@934.4]
  assign DP_io_PCWrite = CU_io_PCWrite; // @[Top.scala 57:17:@953.4]
  assign DP_io_PCWriteCond = CU_io_PCWriteCond; // @[Top.scala 58:21:@954.4]
  assign DP_io_PCSrc = CU_io_PCSrc; // @[Top.scala 59:15:@955.4]
  assign DP_io_IRWrite = CU_io_IRWrite; // @[Top.scala 60:17:@956.4]
  assign DP_io_InstructionOrData = CU_io_InstructionOrData; // @[Top.scala 61:27:@957.4]
  assign DP_io_RegDst = CU_io_RegDst; // @[Top.scala 62:16:@958.4]
  assign DP_io_MemOrALUOut = CU_io_MemOrALUOut; // @[Top.scala 63:21:@959.4]
  assign DP_io_MemWrite = CU_io_MemWrite; // @[Top.scala 64:18:@960.4]
  assign DP_io_ALUSrc1 = CU_io_ALUSrc1; // @[Top.scala 65:17:@961.4]
  assign DP_io_ALUSrc2 = CU_io_ALUSrc2; // @[Top.scala 66:17:@962.4]
  assign DP_io_ALUCtl = ALUCU_io_ALUCtl; // @[Top.scala 72:16:@967.4]
  assign DP_io_RegWrite = CU_io_RegWrite; // @[Top.scala 67:18:@963.4]
  assign DP_io_BeqOrBne = CU_io_BeqOrBne; // @[Top.scala 68:18:@964.4]
  assign DP_io_SignedOrZero = CU_io_SignedOrZero; // @[Top.scala 69:22:@965.4]
  assign DP_io_SizeSel = CU_io_SizeSel; // @[Top.scala 70:17:@966.4]
  assign DP_io_Switches = io_Switches; // @[Top.scala 98:18:@1002.4]
  assign DP_io_Buttons = {_T_84,_T_83}; // @[Top.scala 99:17:@1006.4]
  assign DP_io_Paint = io_Paint; // @[Top.scala 101:15:@1007.4]
  assign DP_io_VGAClock = clk50M; // @[Top.scala 91:18:@996.4]
  assign DP_io__DebugAddr = {{2'd0}, _T_71}; // @[Top.scala 80:20:@973.4]
  assign CU_clock = CPUClock; // @[:@939.4]
  assign CU_reset = ~ io_Reset; // @[:@940.4]
  assign CU_io_OpCode = DP_io_OpCode; // @[Top.scala 56:16:@952.4]
  assign ALUCU_io_ALUOp = CU_io_ALUOp; // @[Top.scala 74:18:@969.4]
  assign ALUCU_io_OpCode = DP_io_OpCode; // @[Top.scala 75:16:@970.4]
  assign ALUCU_io_Funct = DP_io_Funct; // @[Top.scala 73:15:@968.4]
  assign SegDisplay_clock = clk500; // @[:@949.4]
  assign SegDisplay_reset = reset; // @[:@950.4]
  assign SegDisplay_io_data_0 = Data[3:0]; // @[Top.scala 83:27:@975.4]
  assign SegDisplay_io_data_1 = Data[7:4]; // @[Top.scala 83:27:@977.4]
  assign SegDisplay_io_data_2 = Data[11:8]; // @[Top.scala 83:27:@979.4]
  assign SegDisplay_io_data_3 = Data[15:12]; // @[Top.scala 83:27:@981.4]
  assign SegDisplay_io_data_4 = Data[19:16]; // @[Top.scala 83:27:@983.4]
  assign SegDisplay_io_data_5 = Data[23:20]; // @[Top.scala 83:27:@985.4]
  assign SegDisplay_io_data_6 = Data[27:24]; // @[Top.scala 83:27:@987.4]
  assign SegDisplay_io_data_7 = Data[31:28]; // @[Top.scala 83:27:@989.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  counter1 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  clk500 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  clk50M = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      counter1 <= 32'h0;
    end else begin
      if (_T_38) begin
        counter1 <= 32'h0;
      end else begin
        counter1 <= _T_42;
      end
    end
    clk500 <= counter1 <= 32'h1869f;
    if (reset) begin
      clk50M <= 1'h0;
    end else begin
      clk50M <= _T_49;
    end
  end
endmodule
