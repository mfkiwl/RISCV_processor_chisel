module RISCV_decoder(
  input  [31:0] io_instr_data_i,
  output [5:0]  io_instr_type_o,
  output [4:0]  io_rs1_addr_o,
  output [4:0]  io_rs2_addr_o,
  output [4:0]  io_rd_addr_o,
  output [31:0] io_imm_o,
  output [31:0] io_csr_raddr_o,
  output [31:0] io_csr_waddr_o
);
  wire  _T_1 = 7'h33 == io_instr_data_i[6:0]; // @[Conditional.scala 37:30]
  wire  _T_3 = 3'h0 == io_instr_data_i[14:12]; // @[Conditional.scala 37:30]
  wire  _T_5 = io_instr_data_i[31:25] == 7'h0; // @[RISCV_decoder.scala 25:41]
  wire  _T_7 = io_instr_data_i[31:25] == 7'h20; // @[RISCV_decoder.scala 27:47]
  wire [4:0] _GEN_0 = io_instr_data_i[31:25] == 7'h20 ? 5'h1d : 5'h0; // @[RISCV_decoder.scala 27:57 RISCV_decoder.scala 28:29 RISCV_decoder.scala 20:19]
  wire [4:0] _GEN_1 = io_instr_data_i[31:25] == 7'h0 ? 5'h1c : _GEN_0; // @[RISCV_decoder.scala 25:50 RISCV_decoder.scala 26:29]
  wire  _T_8 = 3'h1 == io_instr_data_i[14:12]; // @[Conditional.scala 37:30]
  wire  _T_9 = 3'h2 == io_instr_data_i[14:12]; // @[Conditional.scala 37:30]
  wire  _T_10 = 3'h3 == io_instr_data_i[14:12]; // @[Conditional.scala 37:30]
  wire  _T_11 = 3'h4 == io_instr_data_i[14:12]; // @[Conditional.scala 37:30]
  wire  _T_12 = 3'h5 == io_instr_data_i[14:12]; // @[Conditional.scala 37:30]
  wire [5:0] _GEN_2 = _T_7 ? 6'h23 : 6'h0; // @[RISCV_decoder.scala 46:58 RISCV_decoder.scala 47:29 RISCV_decoder.scala 20:19]
  wire [5:0] _GEN_3 = _T_5 ? 6'h22 : _GEN_2; // @[RISCV_decoder.scala 44:50 RISCV_decoder.scala 45:29]
  wire  _T_17 = 3'h6 == io_instr_data_i[14:12]; // @[Conditional.scala 37:30]
  wire  _T_18 = 3'h7 == io_instr_data_i[14:12]; // @[Conditional.scala 37:30]
  wire [5:0] _GEN_4 = _T_18 ? 6'h25 : 6'h0; // @[Conditional.scala 39:67 RISCV_decoder.scala 54:27 RISCV_decoder.scala 20:19]
  wire [5:0] _GEN_5 = _T_17 ? 6'h24 : _GEN_4; // @[Conditional.scala 39:67 RISCV_decoder.scala 51:27]
  wire [5:0] _GEN_6 = _T_12 ? _GEN_3 : _GEN_5; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_7 = _T_11 ? 6'h21 : _GEN_6; // @[Conditional.scala 39:67 RISCV_decoder.scala 41:27]
  wire [5:0] _GEN_8 = _T_10 ? 6'h20 : _GEN_7; // @[Conditional.scala 39:67 RISCV_decoder.scala 38:27]
  wire [5:0] _GEN_9 = _T_9 ? 6'h1f : _GEN_8; // @[Conditional.scala 39:67 RISCV_decoder.scala 35:27]
  wire [5:0] _GEN_10 = _T_8 ? 6'h1e : _GEN_9; // @[Conditional.scala 39:67 RISCV_decoder.scala 32:27]
  wire [5:0] _GEN_11 = _T_3 ? {{1'd0}, _GEN_1} : _GEN_10; // @[Conditional.scala 40:58]
  wire  _T_19 = 7'h13 == io_instr_data_i[6:0]; // @[Conditional.scala 37:30]
  wire [4:0] _GEN_12 = _T_7 ? 5'h1b : 5'h0; // @[RISCV_decoder.scala 78:58 RISCV_decoder.scala 79:29 RISCV_decoder.scala 20:19]
  wire [4:0] _GEN_13 = _T_5 ? 5'h1a : _GEN_12; // @[RISCV_decoder.scala 76:50 RISCV_decoder.scala 77:29]
  wire [4:0] _GEN_14 = _T_18 ? 5'h18 : 5'h0; // @[Conditional.scala 39:67 RISCV_decoder.scala 86:27 RISCV_decoder.scala 20:19]
  wire [4:0] _GEN_15 = _T_17 ? 5'h17 : _GEN_14; // @[Conditional.scala 39:67 RISCV_decoder.scala 83:27]
  wire [4:0] _GEN_16 = _T_12 ? _GEN_13 : _GEN_15; // @[Conditional.scala 39:67]
  wire [4:0] _GEN_17 = _T_11 ? 5'h16 : _GEN_16; // @[Conditional.scala 39:67 RISCV_decoder.scala 73:27]
  wire [4:0] _GEN_18 = _T_10 ? 5'h15 : _GEN_17; // @[Conditional.scala 39:67 RISCV_decoder.scala 70:27]
  wire [4:0] _GEN_19 = _T_9 ? 5'h14 : _GEN_18; // @[Conditional.scala 39:67 RISCV_decoder.scala 67:27]
  wire [4:0] _GEN_20 = _T_8 ? 5'h19 : _GEN_19; // @[Conditional.scala 39:67 RISCV_decoder.scala 64:27]
  wire [4:0] _GEN_21 = _T_3 ? 5'h13 : _GEN_20; // @[Conditional.scala 40:58 RISCV_decoder.scala 61:27]
  wire  _T_33 = 7'h23 == io_instr_data_i[6:0]; // @[Conditional.scala 37:30]
  wire [4:0] _GEN_22 = _T_9 ? 5'h12 : 5'h0; // @[Conditional.scala 39:67 RISCV_decoder.scala 99:27 RISCV_decoder.scala 20:19]
  wire [4:0] _GEN_23 = _T_8 ? 5'h11 : _GEN_22; // @[Conditional.scala 39:67 RISCV_decoder.scala 96:27]
  wire [4:0] _GEN_24 = _T_3 ? 5'h10 : _GEN_23; // @[Conditional.scala 40:58 RISCV_decoder.scala 93:27]
  wire  _T_38 = 7'h3 == io_instr_data_i[6:0]; // @[Conditional.scala 37:30]
  wire [3:0] _GEN_25 = _T_12 ? 4'hf : 4'h0; // @[Conditional.scala 39:67 RISCV_decoder.scala 118:27 RISCV_decoder.scala 20:19]
  wire [3:0] _GEN_26 = _T_11 ? 4'he : _GEN_25; // @[Conditional.scala 39:67 RISCV_decoder.scala 115:27]
  wire [3:0] _GEN_27 = _T_9 ? 4'hd : _GEN_26; // @[Conditional.scala 39:67 RISCV_decoder.scala 112:27]
  wire [3:0] _GEN_28 = _T_8 ? 4'hc : _GEN_27; // @[Conditional.scala 39:67 RISCV_decoder.scala 109:27]
  wire [3:0] _GEN_29 = _T_3 ? 4'hb : _GEN_28; // @[Conditional.scala 40:58 RISCV_decoder.scala 106:27]
  wire  _T_45 = 7'h63 == io_instr_data_i[6:0]; // @[Conditional.scala 37:30]
  wire [3:0] _GEN_30 = _T_18 ? 4'ha : 4'h0; // @[Conditional.scala 39:67 RISCV_decoder.scala 140:27 RISCV_decoder.scala 20:19]
  wire [3:0] _GEN_31 = _T_17 ? 4'h9 : _GEN_30; // @[Conditional.scala 39:67 RISCV_decoder.scala 137:27]
  wire [3:0] _GEN_32 = _T_12 ? 4'h8 : _GEN_31; // @[Conditional.scala 39:67 RISCV_decoder.scala 134:27]
  wire [3:0] _GEN_33 = _T_11 ? 4'h7 : _GEN_32; // @[Conditional.scala 39:67 RISCV_decoder.scala 131:27]
  wire [3:0] _GEN_34 = _T_8 ? 4'h6 : _GEN_33; // @[Conditional.scala 39:67 RISCV_decoder.scala 128:27]
  wire [3:0] _GEN_35 = _T_3 ? 4'h5 : _GEN_34; // @[Conditional.scala 40:58 RISCV_decoder.scala 125:27]
  wire  _T_53 = 7'h67 == io_instr_data_i[6:0]; // @[Conditional.scala 37:30]
  wire  _T_54 = 7'h6f == io_instr_data_i[6:0]; // @[Conditional.scala 37:30]
  wire  _T_55 = 7'h17 == io_instr_data_i[6:0]; // @[Conditional.scala 37:30]
  wire  _T_56 = 7'h37 == io_instr_data_i[6:0]; // @[Conditional.scala 37:30]
  wire  _T_57 = 7'h73 == io_instr_data_i[6:0]; // @[Conditional.scala 37:30]
  wire [5:0] _GEN_36 = _T_18 ? 6'h2b : 6'h0; // @[Conditional.scala 39:67 RISCV_decoder.scala 174:27 RISCV_decoder.scala 20:19]
  wire [5:0] _GEN_37 = _T_17 ? 6'h2a : _GEN_36; // @[Conditional.scala 39:67 RISCV_decoder.scala 171:27]
  wire [5:0] _GEN_38 = _T_12 ? 6'h29 : _GEN_37; // @[Conditional.scala 39:67 RISCV_decoder.scala 168:27]
  wire [5:0] _GEN_39 = _T_10 ? 6'h28 : _GEN_38; // @[Conditional.scala 39:67 RISCV_decoder.scala 165:27]
  wire [5:0] _GEN_40 = _T_9 ? 6'h27 : _GEN_39; // @[Conditional.scala 39:67 RISCV_decoder.scala 162:27]
  wire [5:0] _GEN_41 = _T_8 ? 6'h26 : _GEN_40; // @[Conditional.scala 40:58 RISCV_decoder.scala 159:27]
  wire [5:0] _GEN_42 = _T_57 ? _GEN_41 : 6'h0; // @[Conditional.scala 39:67 RISCV_decoder.scala 20:19]
  wire [5:0] _GEN_43 = _T_56 ? 6'h1 : _GEN_42; // @[Conditional.scala 39:67 RISCV_decoder.scala 154:23]
  wire [5:0] _GEN_44 = _T_55 ? 6'h2 : _GEN_43; // @[Conditional.scala 39:67 RISCV_decoder.scala 151:23]
  wire [5:0] _GEN_45 = _T_54 ? 6'h3 : _GEN_44; // @[Conditional.scala 39:67 RISCV_decoder.scala 148:23]
  wire [5:0] _GEN_46 = _T_53 ? 6'h4 : _GEN_45; // @[Conditional.scala 39:67 RISCV_decoder.scala 145:23]
  wire [5:0] _GEN_47 = _T_45 ? {{2'd0}, _GEN_35} : _GEN_46; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_48 = _T_38 ? {{2'd0}, _GEN_29} : _GEN_47; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_49 = _T_33 ? {{1'd0}, _GEN_24} : _GEN_48; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_50 = _T_19 ? {{1'd0}, _GEN_21} : _GEN_49; // @[Conditional.scala 39:67]
  wire [11:0] io_csr_raddr_o_lo = io_instr_data_i[31:20]; // @[RISCV_decoder.scala 186:57]
  wire [31:0] _io_csr_raddr_o_T = {20'h0,io_csr_raddr_o_lo}; // @[Cat.scala 30:58]
  wire  _T_68 = io_instr_type_o == 6'h2; // @[RISCV_decoder.scala 192:25]
  wire  _T_69 = io_instr_type_o == 6'h1 | _T_68; // @[RISCV_decoder.scala 191:44]
  wire [31:0] _io_imm_o_T = io_instr_data_i & 32'hfffff000; // @[RISCV_decoder.scala 193:33]
  wire [11:0] io_imm_o_hi_hi_hi = io_instr_data_i[31] ? 12'hfff : 12'h0; // @[Bitwise.scala 72:12]
  wire [7:0] io_imm_o_hi_hi_lo = io_instr_data_i[19:12]; // @[RISCV_decoder.scala 195:67]
  wire  io_imm_o_hi_lo = io_instr_data_i[20]; // @[RISCV_decoder.scala 195:92]
  wire [10:0] io_imm_o_lo_hi = io_instr_data_i[31:21]; // @[RISCV_decoder.scala 195:113]
  wire [32:0] _io_imm_o_T_3 = {io_imm_o_hi_hi_hi,io_imm_o_hi_hi_lo,io_imm_o_hi_lo,io_imm_o_lo_hi,1'h0}; // @[Cat.scala 30:58]
  wire [20:0] io_imm_o_hi_1 = io_instr_data_i[31] ? 21'h1fffff : 21'h0; // @[Bitwise.scala 72:12]
  wire [32:0] _io_imm_o_T_6 = {io_imm_o_hi_1,io_csr_raddr_o_lo}; // @[Cat.scala 30:58]
  wire  _T_73 = io_instr_type_o == 6'h6; // @[RISCV_decoder.scala 199:32]
  wire  _T_74 = io_instr_type_o == 6'h5 | _T_73; // @[RISCV_decoder.scala 198:51]
  wire  _T_75 = io_instr_type_o == 6'h7; // @[RISCV_decoder.scala 200:32]
  wire  _T_76 = _T_74 | _T_75; // @[RISCV_decoder.scala 199:51]
  wire  _T_77 = io_instr_type_o == 6'h8; // @[RISCV_decoder.scala 201:32]
  wire  _T_78 = _T_76 | _T_77; // @[RISCV_decoder.scala 200:51]
  wire  _T_79 = io_instr_type_o == 6'h9; // @[RISCV_decoder.scala 202:32]
  wire  _T_80 = _T_78 | _T_79; // @[RISCV_decoder.scala 201:51]
  wire  _T_81 = io_instr_type_o == 6'ha; // @[RISCV_decoder.scala 203:32]
  wire  _T_82 = _T_80 | _T_81; // @[RISCV_decoder.scala 202:52]
  wire [19:0] io_imm_o_hi_hi_hi_1 = io_instr_data_i[31] ? 20'hfffff : 20'h0; // @[Bitwise.scala 72:12]
  wire  io_imm_o_hi_hi_lo_1 = io_instr_data_i[7]; // @[RISCV_decoder.scala 204:67]
  wire [5:0] io_imm_o_hi_lo_1 = io_instr_data_i[30:25]; // @[RISCV_decoder.scala 204:87]
  wire [3:0] io_imm_o_lo_hi_1 = io_instr_data_i[11:8]; // @[RISCV_decoder.scala 204:112]
  wire [31:0] _io_imm_o_T_9 = {io_imm_o_hi_hi_hi_1,io_imm_o_hi_hi_lo_1,io_imm_o_hi_lo_1,io_imm_o_lo_hi_1,1'h0}; // @[Cat.scala 30:58]
  wire  _T_84 = io_instr_type_o == 6'hc; // @[RISCV_decoder.scala 206:32]
  wire  _T_85 = io_instr_type_o == 6'hb | _T_84; // @[RISCV_decoder.scala 205:50]
  wire  _T_86 = io_instr_type_o == 6'hd; // @[RISCV_decoder.scala 207:32]
  wire  _T_87 = _T_85 | _T_86; // @[RISCV_decoder.scala 206:50]
  wire  _T_88 = io_instr_type_o == 6'he; // @[RISCV_decoder.scala 208:32]
  wire  _T_89 = _T_87 | _T_88; // @[RISCV_decoder.scala 207:50]
  wire  _T_90 = io_instr_type_o == 6'hf; // @[RISCV_decoder.scala 209:32]
  wire  _T_91 = _T_89 | _T_90; // @[RISCV_decoder.scala 208:51]
  wire  _T_92 = io_instr_type_o == 6'h13; // @[RISCV_decoder.scala 210:32]
  wire  _T_93 = _T_91 | _T_92; // @[RISCV_decoder.scala 209:51]
  wire  _T_94 = io_instr_type_o == 6'h14; // @[RISCV_decoder.scala 211:32]
  wire  _T_95 = _T_93 | _T_94; // @[RISCV_decoder.scala 210:52]
  wire  _T_96 = io_instr_type_o == 6'h15; // @[RISCV_decoder.scala 212:32]
  wire  _T_97 = _T_95 | _T_96; // @[RISCV_decoder.scala 211:52]
  wire  _T_98 = io_instr_type_o == 6'h16; // @[RISCV_decoder.scala 213:32]
  wire  _T_99 = _T_97 | _T_98; // @[RISCV_decoder.scala 212:53]
  wire  _T_100 = io_instr_type_o == 6'h17; // @[RISCV_decoder.scala 214:32]
  wire  _T_101 = _T_99 | _T_100; // @[RISCV_decoder.scala 213:52]
  wire  _T_102 = io_instr_type_o == 6'h18; // @[RISCV_decoder.scala 215:32]
  wire  _T_103 = _T_101 | _T_102; // @[RISCV_decoder.scala 214:51]
  wire  _T_104 = io_instr_type_o == 6'h19; // @[RISCV_decoder.scala 216:32]
  wire  _T_105 = _T_103 | _T_104; // @[RISCV_decoder.scala 215:52]
  wire  _T_106 = io_instr_type_o == 6'h1a; // @[RISCV_decoder.scala 217:32]
  wire  _T_107 = _T_105 | _T_106; // @[RISCV_decoder.scala 216:52]
  wire  _T_108 = io_instr_type_o == 6'h1b; // @[RISCV_decoder.scala 218:32]
  wire  _T_109 = _T_107 | _T_108; // @[RISCV_decoder.scala 217:52]
  wire [10:0] io_imm_o_lo_3 = io_instr_data_i[30:20]; // @[RISCV_decoder.scala 219:67]
  wire [31:0] _io_imm_o_T_12 = {io_imm_o_hi_1,io_imm_o_lo_3}; // @[Cat.scala 30:58]
  wire  _T_111 = io_instr_type_o == 6'h11; // @[RISCV_decoder.scala 221:32]
  wire  _T_112 = io_instr_type_o == 6'h10 | _T_111; // @[RISCV_decoder.scala 220:50]
  wire  _T_113 = io_instr_type_o == 6'h12; // @[RISCV_decoder.scala 222:32]
  wire  _T_114 = _T_112 | _T_113; // @[RISCV_decoder.scala 221:50]
  wire [31:0] _io_imm_o_T_15 = {io_imm_o_hi_1,io_imm_o_hi_lo_1,io_instr_data_i[11:7]}; // @[Cat.scala 30:58]
  wire  _T_116 = io_instr_type_o == 6'h27; // @[RISCV_decoder.scala 225:32]
  wire  _T_117 = io_instr_type_o == 6'h26 | _T_116; // @[RISCV_decoder.scala 224:53]
  wire  _T_118 = io_instr_type_o == 6'h28; // @[RISCV_decoder.scala 226:32]
  wire  _T_119 = _T_117 | _T_118; // @[RISCV_decoder.scala 225:53]
  wire  _T_120 = io_instr_type_o == 6'h29; // @[RISCV_decoder.scala 227:32]
  wire  _T_121 = _T_119 | _T_120; // @[RISCV_decoder.scala 226:53]
  wire  _T_122 = io_instr_type_o == 6'h2a; // @[RISCV_decoder.scala 228:32]
  wire  _T_123 = _T_121 | _T_122; // @[RISCV_decoder.scala 227:54]
  wire  _T_124 = io_instr_type_o == 6'h2b; // @[RISCV_decoder.scala 229:32]
  wire  _T_125 = _T_123 | _T_124; // @[RISCV_decoder.scala 228:54]
  wire [31:0] _GEN_54 = _T_125 ? {{27'd0}, io_instr_data_i[19:15]} : 32'hdeadbeef; // @[RISCV_decoder.scala 229:55 RISCV_decoder.scala 230:14 RISCV_decoder.scala 190:12]
  wire [31:0] _GEN_55 = _T_114 ? _io_imm_o_T_15 : _GEN_54; // @[RISCV_decoder.scala 222:51 RISCV_decoder.scala 223:14]
  wire [31:0] _GEN_56 = _T_109 ? _io_imm_o_T_12 : _GEN_55; // @[RISCV_decoder.scala 218:53 RISCV_decoder.scala 219:14]
  wire [31:0] _GEN_57 = _T_82 ? _io_imm_o_T_9 : _GEN_56; // @[RISCV_decoder.scala 203:53 RISCV_decoder.scala 204:14]
  wire [32:0] _GEN_58 = io_instr_type_o == 6'h4 ? _io_imm_o_T_6 : {{1'd0}, _GEN_57}; // @[RISCV_decoder.scala 196:53 RISCV_decoder.scala 197:14]
  wire [32:0] _GEN_59 = io_instr_type_o == 6'h3 ? _io_imm_o_T_3 : _GEN_58; // @[RISCV_decoder.scala 194:52 RISCV_decoder.scala 195:14]
  wire [32:0] _GEN_60 = _T_69 ? {{1'd0}, _io_imm_o_T} : _GEN_59; // @[RISCV_decoder.scala 192:47 RISCV_decoder.scala 193:14]
  assign io_instr_type_o = _T_1 ? _GEN_11 : _GEN_50; // @[Conditional.scala 40:58]
  assign io_rs1_addr_o = io_instr_data_i[19:15]; // @[RISCV_decoder.scala 179:35]
  assign io_rs2_addr_o = io_instr_data_i[24:20]; // @[RISCV_decoder.scala 180:35]
  assign io_rd_addr_o = io_instr_data_i[11:7]; // @[RISCV_decoder.scala 182:34]
  assign io_imm_o = _GEN_60[31:0];
  assign io_csr_raddr_o = io_instr_data_i[6:0] == 7'h73 ? _io_csr_raddr_o_T : 32'h0; // @[RISCV_decoder.scala 185:49 RISCV_decoder.scala 186:20 RISCV_decoder.scala 183:18]
  assign io_csr_waddr_o = io_instr_data_i[6:0] == 7'h73 ? _io_csr_raddr_o_T : 32'h0; // @[RISCV_decoder.scala 185:49 RISCV_decoder.scala 187:20 RISCV_decoder.scala 184:18]
endmodule
module RISCV_register_file(
  input         clock,
  input  [4:0]  io_reg_raddr_a_i,
  output [31:0] io_reg_rdata_a_o,
  input  [4:0]  io_reg_raddr_b_i,
  output [31:0] io_reg_rdata_b_o,
  input  [4:0]  io_reg_waddr_a_i,
  input  [31:0] io_reg_wdata_a_i,
  input         io_reg_we_a_i
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] regfile [0:31]; // @[RISCV_register_file.scala 23:20]
  wire [31:0] regfile_io_reg_rdata_a_o_MPORT_data; // @[RISCV_register_file.scala 23:20]
  wire [4:0] regfile_io_reg_rdata_a_o_MPORT_addr; // @[RISCV_register_file.scala 23:20]
  wire [31:0] regfile_io_reg_rdata_b_o_MPORT_data; // @[RISCV_register_file.scala 23:20]
  wire [4:0] regfile_io_reg_rdata_b_o_MPORT_addr; // @[RISCV_register_file.scala 23:20]
  wire [31:0] regfile_io_reg_rdata_c_o_MPORT_data; // @[RISCV_register_file.scala 23:20]
  wire [4:0] regfile_io_reg_rdata_c_o_MPORT_addr; // @[RISCV_register_file.scala 23:20]
  wire [31:0] regfile_MPORT_data; // @[RISCV_register_file.scala 23:20]
  wire [4:0] regfile_MPORT_addr; // @[RISCV_register_file.scala 23:20]
  wire  regfile_MPORT_mask; // @[RISCV_register_file.scala 23:20]
  wire  regfile_MPORT_en; // @[RISCV_register_file.scala 23:20]
  wire [31:0] regfile_MPORT_1_data; // @[RISCV_register_file.scala 23:20]
  wire [4:0] regfile_MPORT_1_addr; // @[RISCV_register_file.scala 23:20]
  wire  regfile_MPORT_1_mask; // @[RISCV_register_file.scala 23:20]
  wire  regfile_MPORT_1_en; // @[RISCV_register_file.scala 23:20]
  wire  _GEN_2 = io_reg_waddr_a_i == 5'h0 ? 1'h0 : 1'h1; // @[RISCV_register_file.scala 27:37 RISCV_register_file.scala 23:20 RISCV_register_file.scala 30:14]
  wire  _T_1 = io_reg_raddr_a_i == 5'h0; // @[RISCV_register_file.scala 34:26]
  wire  _T_2 = io_reg_raddr_b_i == 5'h0; // @[RISCV_register_file.scala 40:26]
  assign regfile_io_reg_rdata_a_o_MPORT_addr = io_reg_raddr_a_i;
  assign regfile_io_reg_rdata_a_o_MPORT_data = regfile[regfile_io_reg_rdata_a_o_MPORT_addr]; // @[RISCV_register_file.scala 23:20]
  assign regfile_io_reg_rdata_b_o_MPORT_addr = io_reg_raddr_b_i;
  assign regfile_io_reg_rdata_b_o_MPORT_data = regfile[regfile_io_reg_rdata_b_o_MPORT_addr]; // @[RISCV_register_file.scala 23:20]
  assign regfile_io_reg_rdata_c_o_MPORT_addr = 5'h0;
  assign regfile_io_reg_rdata_c_o_MPORT_data = regfile[regfile_io_reg_rdata_c_o_MPORT_addr]; // @[RISCV_register_file.scala 23:20]
  assign regfile_MPORT_data = 32'h0;
  assign regfile_MPORT_addr = 5'h0;
  assign regfile_MPORT_mask = 1'h1;
  assign regfile_MPORT_en = 1'h1;
  assign regfile_MPORT_1_data = io_reg_wdata_a_i;
  assign regfile_MPORT_1_addr = io_reg_waddr_a_i;
  assign regfile_MPORT_1_mask = 1'h1;
  assign regfile_MPORT_1_en = io_reg_we_a_i & _GEN_2;
  assign io_reg_rdata_a_o = io_reg_raddr_a_i == 5'h0 ? 32'h0 : regfile_io_reg_rdata_a_o_MPORT_data; // @[RISCV_register_file.scala 34:35 RISCV_register_file.scala 35:22 RISCV_register_file.scala 37:22]
  assign io_reg_rdata_b_o = io_reg_raddr_b_i == 5'h0 ? 32'h0 : regfile_io_reg_rdata_b_o_MPORT_data; // @[RISCV_register_file.scala 40:35 RISCV_register_file.scala 41:22 RISCV_register_file.scala 43:22]
  always @(posedge clock) begin
    if(regfile_MPORT_en & regfile_MPORT_mask) begin
      regfile[regfile_MPORT_addr] <= regfile_MPORT_data; // @[RISCV_register_file.scala 23:20]
    end
    if(regfile_MPORT_1_en & regfile_MPORT_1_mask) begin
      regfile[regfile_MPORT_1_addr] <= regfile_MPORT_1_data; // @[RISCV_register_file.scala 23:20]
    end
  end
// Register and memory initialization
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
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    regfile[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RISCV_csr_register(
  input         clock,
  input         reset,
  input         io_csr_we_i,
  input  [31:0] io_csr_waddr_i,
  input  [31:0] io_csr_wdata_i,
  input  [31:0] io_csr_raddr_i,
  output [31:0] io_csr_rdata_o,
  input         io_clint_csr_we_i,
  input  [31:0] io_clint_csr_waddr_i,
  input  [31:0] io_clint_csr_wdata_i,
  output [31:0] io_clint_csr_mtvec_o,
  output [31:0] io_clint_csr_mepc_o,
  output [31:0] io_clint_scr_mstatus_o
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] mtvec; // @[RISCV_csr_register.scala 24:22]
  reg [31:0] mcause; // @[RISCV_csr_register.scala 25:23]
  reg [31:0] mepc; // @[RISCV_csr_register.scala 26:21]
  reg [31:0] mie; // @[RISCV_csr_register.scala 27:20]
  reg [31:0] mstatus; // @[RISCV_csr_register.scala 28:24]
  wire  _T_1 = 12'h305 == io_csr_waddr_i[11:0]; // @[Conditional.scala 37:30]
  wire  _T_2 = 12'h342 == io_csr_waddr_i[11:0]; // @[Conditional.scala 37:30]
  wire  _T_3 = 12'h341 == io_csr_waddr_i[11:0]; // @[Conditional.scala 37:30]
  wire  _T_4 = 12'h304 == io_csr_waddr_i[11:0]; // @[Conditional.scala 37:30]
  wire  _T_5 = 12'h300 == io_csr_waddr_i[11:0]; // @[Conditional.scala 37:30]
  wire [31:0] _GEN_0 = _T_5 ? io_csr_wdata_i : mstatus; // @[Conditional.scala 39:67 RISCV_csr_register.scala 50:17 RISCV_csr_register.scala 28:24]
  wire [31:0] _GEN_1 = _T_4 ? io_csr_wdata_i : mie; // @[Conditional.scala 39:67 RISCV_csr_register.scala 47:13 RISCV_csr_register.scala 27:20]
  wire [31:0] _GEN_2 = _T_4 ? mstatus : _GEN_0; // @[Conditional.scala 39:67 RISCV_csr_register.scala 28:24]
  wire [31:0] _GEN_3 = _T_3 ? io_csr_wdata_i : mepc; // @[Conditional.scala 39:67 RISCV_csr_register.scala 44:14 RISCV_csr_register.scala 26:21]
  wire [31:0] _GEN_4 = _T_3 ? mie : _GEN_1; // @[Conditional.scala 39:67 RISCV_csr_register.scala 27:20]
  wire [31:0] _GEN_5 = _T_3 ? mstatus : _GEN_2; // @[Conditional.scala 39:67 RISCV_csr_register.scala 28:24]
  wire  _T_7 = 12'h305 == io_clint_csr_waddr_i[11:0]; // @[Conditional.scala 37:30]
  wire  _T_8 = 12'h342 == io_clint_csr_waddr_i[11:0]; // @[Conditional.scala 37:30]
  wire  _T_9 = 12'h341 == io_clint_csr_waddr_i[11:0]; // @[Conditional.scala 37:30]
  wire  _T_10 = 12'h304 == io_clint_csr_waddr_i[11:0]; // @[Conditional.scala 37:30]
  wire  _T_11 = 12'h300 == io_clint_csr_waddr_i[11:0]; // @[Conditional.scala 37:30]
  wire [31:0] _GEN_15 = _T_11 ? io_clint_csr_wdata_i : mstatus; // @[Conditional.scala 39:67 RISCV_csr_register.scala 68:17 RISCV_csr_register.scala 28:24]
  wire [31:0] _GEN_16 = _T_10 ? io_clint_csr_wdata_i : mie; // @[Conditional.scala 39:67 RISCV_csr_register.scala 65:13 RISCV_csr_register.scala 27:20]
  wire [31:0] _GEN_17 = _T_10 ? mstatus : _GEN_15; // @[Conditional.scala 39:67 RISCV_csr_register.scala 28:24]
  wire [31:0] _GEN_18 = _T_9 ? io_clint_csr_wdata_i : mepc; // @[Conditional.scala 39:67 RISCV_csr_register.scala 62:14 RISCV_csr_register.scala 26:21]
  wire [31:0] _GEN_19 = _T_9 ? mie : _GEN_16; // @[Conditional.scala 39:67 RISCV_csr_register.scala 27:20]
  wire [31:0] _GEN_20 = _T_9 ? mstatus : _GEN_17; // @[Conditional.scala 39:67 RISCV_csr_register.scala 28:24]
  wire [31:0] _GEN_21 = _T_8 ? io_clint_csr_wdata_i : mcause; // @[Conditional.scala 39:67 RISCV_csr_register.scala 59:16 RISCV_csr_register.scala 25:23]
  wire [31:0] _GEN_22 = _T_8 ? mepc : _GEN_18; // @[Conditional.scala 39:67 RISCV_csr_register.scala 26:21]
  wire [31:0] _GEN_23 = _T_8 ? mie : _GEN_19; // @[Conditional.scala 39:67 RISCV_csr_register.scala 27:20]
  wire [31:0] _GEN_24 = _T_8 ? mstatus : _GEN_20; // @[Conditional.scala 39:67 RISCV_csr_register.scala 28:24]
  wire  _T_17 = 12'h305 == io_csr_raddr_i[11:0]; // @[Conditional.scala 37:30]
  wire  _T_18 = 12'h342 == io_csr_raddr_i[11:0]; // @[Conditional.scala 37:30]
  wire  _T_19 = 12'h341 == io_csr_raddr_i[11:0]; // @[Conditional.scala 37:30]
  wire  _T_20 = 12'h304 == io_csr_raddr_i[11:0]; // @[Conditional.scala 37:30]
  wire  _T_21 = 12'h300 == io_csr_raddr_i[11:0]; // @[Conditional.scala 37:30]
  wire [31:0] _GEN_40 = _T_21 ? mstatus : 32'h0; // @[Conditional.scala 39:67 RISCV_csr_register.scala 92:24 RISCV_csr_register.scala 74:18]
  wire [31:0] _GEN_41 = _T_20 ? mie : _GEN_40; // @[Conditional.scala 39:67 RISCV_csr_register.scala 89:24]
  wire [31:0] _GEN_42 = _T_19 ? mepc : _GEN_41; // @[Conditional.scala 39:67 RISCV_csr_register.scala 86:24]
  wire [31:0] _GEN_43 = _T_18 ? mcause : _GEN_42; // @[Conditional.scala 39:67 RISCV_csr_register.scala 83:24]
  wire [31:0] _GEN_44 = _T_17 ? mtvec : _GEN_43; // @[Conditional.scala 40:58 RISCV_csr_register.scala 80:24]
  assign io_csr_rdata_o = io_csr_waddr_i[11:0] == io_csr_raddr_i[11:0] & io_csr_we_i ? io_csr_wdata_i : _GEN_44; // @[RISCV_csr_register.scala 75:75 RISCV_csr_register.scala 76:20]
  assign io_clint_csr_mtvec_o = mtvec; // @[RISCV_csr_register.scala 30:24]
  assign io_clint_csr_mepc_o = mepc; // @[RISCV_csr_register.scala 31:23]
  assign io_clint_scr_mstatus_o = mstatus; // @[RISCV_csr_register.scala 32:26]
  always @(posedge clock) begin
    if (reset) begin // @[RISCV_csr_register.scala 24:22]
      mtvec <= 32'h0; // @[RISCV_csr_register.scala 24:22]
    end else if (io_csr_we_i) begin // @[RISCV_csr_register.scala 35:22]
      if (_T_1) begin // @[Conditional.scala 40:58]
        mtvec <= io_csr_wdata_i; // @[RISCV_csr_register.scala 38:15]
      end
    end else if (io_clint_csr_we_i) begin // @[RISCV_csr_register.scala 53:35]
      if (_T_7) begin // @[Conditional.scala 40:58]
        mtvec <= io_clint_csr_wdata_i; // @[RISCV_csr_register.scala 56:15]
      end
    end
    if (reset) begin // @[RISCV_csr_register.scala 25:23]
      mcause <= 32'h0; // @[RISCV_csr_register.scala 25:23]
    end else if (io_csr_we_i) begin // @[RISCV_csr_register.scala 35:22]
      if (!(_T_1)) begin // @[Conditional.scala 40:58]
        if (_T_2) begin // @[Conditional.scala 39:67]
          mcause <= io_csr_wdata_i; // @[RISCV_csr_register.scala 41:16]
        end
      end
    end else if (io_clint_csr_we_i) begin // @[RISCV_csr_register.scala 53:35]
      if (!(_T_7)) begin // @[Conditional.scala 40:58]
        mcause <= _GEN_21;
      end
    end
    if (reset) begin // @[RISCV_csr_register.scala 26:21]
      mepc <= 32'h0; // @[RISCV_csr_register.scala 26:21]
    end else if (io_csr_we_i) begin // @[RISCV_csr_register.scala 35:22]
      if (!(_T_1)) begin // @[Conditional.scala 40:58]
        if (!(_T_2)) begin // @[Conditional.scala 39:67]
          mepc <= _GEN_3;
        end
      end
    end else if (io_clint_csr_we_i) begin // @[RISCV_csr_register.scala 53:35]
      if (!(_T_7)) begin // @[Conditional.scala 40:58]
        mepc <= _GEN_22;
      end
    end
    if (reset) begin // @[RISCV_csr_register.scala 27:20]
      mie <= 32'h0; // @[RISCV_csr_register.scala 27:20]
    end else if (io_csr_we_i) begin // @[RISCV_csr_register.scala 35:22]
      if (!(_T_1)) begin // @[Conditional.scala 40:58]
        if (!(_T_2)) begin // @[Conditional.scala 39:67]
          mie <= _GEN_4;
        end
      end
    end else if (io_clint_csr_we_i) begin // @[RISCV_csr_register.scala 53:35]
      if (!(_T_7)) begin // @[Conditional.scala 40:58]
        mie <= _GEN_23;
      end
    end
    if (reset) begin // @[RISCV_csr_register.scala 28:24]
      mstatus <= 32'h0; // @[RISCV_csr_register.scala 28:24]
    end else if (io_csr_we_i) begin // @[RISCV_csr_register.scala 35:22]
      if (!(_T_1)) begin // @[Conditional.scala 40:58]
        if (!(_T_2)) begin // @[Conditional.scala 39:67]
          mstatus <= _GEN_5;
        end
      end
    end else if (io_clint_csr_we_i) begin // @[RISCV_csr_register.scala 53:35]
      if (!(_T_7)) begin // @[Conditional.scala 40:58]
        mstatus <= _GEN_24;
      end
    end
  end
// Register and memory initialization
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
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  mtvec = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  mcause = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  mepc = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  mie = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  mstatus = _RAND_4[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RISCV_ex_control(
  input  [5:0] io_instr_type_i,
  output       io_jump_o,
  output       io_branch_o,
  output       io_alu_op1_src_o,
  output       io_alu_op2_src_o,
  output [3:0] io_alu_op_o,
  output [2:0] io_comp_op_o,
  output       io_mem_wirte_o,
  output [3:0] io_mem_op_o,
  output       io_reg_write_o,
  output [1:0] io_reg_write_src_o,
  output       io_csr_write_o
);
  wire  _io_jump_o_T = io_instr_type_i == 6'h4; // @[RISCV_ex_control.scala 28:32]
  wire  _io_jump_o_T_1 = io_instr_type_i == 6'h3; // @[RISCV_ex_control.scala 28:70]
  wire  _io_branch_o_T = io_instr_type_i == 6'h5; // @[RISCV_ex_control.scala 29:34]
  wire  _io_branch_o_T_1 = io_instr_type_i == 6'h6; // @[RISCV_ex_control.scala 30:34]
  wire  _io_branch_o_T_2 = io_instr_type_i == 6'h5 | _io_branch_o_T_1; // @[RISCV_ex_control.scala 29:53]
  wire  _io_branch_o_T_3 = io_instr_type_i == 6'h7; // @[RISCV_ex_control.scala 31:34]
  wire  _io_branch_o_T_4 = _io_branch_o_T_2 | _io_branch_o_T_3; // @[RISCV_ex_control.scala 30:53]
  wire  _io_branch_o_T_5 = io_instr_type_i == 6'h8; // @[RISCV_ex_control.scala 32:34]
  wire  _io_branch_o_T_6 = _io_branch_o_T_4 | _io_branch_o_T_5; // @[RISCV_ex_control.scala 31:53]
  wire  _io_branch_o_T_7 = io_instr_type_i == 6'h9; // @[RISCV_ex_control.scala 33:34]
  wire  _io_branch_o_T_8 = _io_branch_o_T_6 | _io_branch_o_T_7; // @[RISCV_ex_control.scala 32:53]
  wire  _io_branch_o_T_9 = io_instr_type_i == 6'ha; // @[RISCV_ex_control.scala 34:34]
  wire  _io_csr_write_o_T = io_instr_type_i == 6'h26; // @[RISCV_ex_control.scala 36:37]
  wire  _io_csr_write_o_T_1 = io_instr_type_i == 6'h27; // @[RISCV_ex_control.scala 37:37]
  wire  _io_csr_write_o_T_2 = io_instr_type_i == 6'h26 | _io_csr_write_o_T_1; // @[RISCV_ex_control.scala 36:58]
  wire  _io_csr_write_o_T_3 = io_instr_type_i == 6'h28; // @[RISCV_ex_control.scala 38:37]
  wire  _io_csr_write_o_T_4 = _io_csr_write_o_T_2 | _io_csr_write_o_T_3; // @[RISCV_ex_control.scala 37:58]
  wire  _io_csr_write_o_T_5 = io_instr_type_i == 6'h29; // @[RISCV_ex_control.scala 39:37]
  wire  _io_csr_write_o_T_6 = _io_csr_write_o_T_4 | _io_csr_write_o_T_5; // @[RISCV_ex_control.scala 38:58]
  wire  _io_csr_write_o_T_7 = io_instr_type_i == 6'h2a; // @[RISCV_ex_control.scala 40:37]
  wire  _io_csr_write_o_T_8 = _io_csr_write_o_T_6 | _io_csr_write_o_T_7; // @[RISCV_ex_control.scala 39:59]
  wire  _io_csr_write_o_T_9 = io_instr_type_i == 6'h2b; // @[RISCV_ex_control.scala 41:37]
  wire  _io_csr_write_o_T_10 = _io_csr_write_o_T_8 | _io_csr_write_o_T_9; // @[RISCV_ex_control.scala 40:59]
  wire  _T = io_instr_type_i == 6'h2; // @[RISCV_ex_control.scala 44:25]
  wire  _T_2 = io_instr_type_i == 6'h2 | _io_jump_o_T_1; // @[RISCV_ex_control.scala 44:46]
  wire  _T_4 = _T_2 | _io_branch_o_T; // @[RISCV_ex_control.scala 45:44]
  wire  _T_6 = _T_4 | _io_branch_o_T_1; // @[RISCV_ex_control.scala 46:44]
  wire  _T_8 = _T_6 | _io_branch_o_T_3; // @[RISCV_ex_control.scala 47:44]
  wire  _T_10 = _T_8 | _io_branch_o_T_5; // @[RISCV_ex_control.scala 48:44]
  wire  _T_12 = _T_10 | _io_branch_o_T_7; // @[RISCV_ex_control.scala 49:44]
  wire  _T_15 = io_instr_type_i == 6'h1c; // @[RISCV_ex_control.scala 58:25]
  wire  _T_16 = io_instr_type_i == 6'h1d; // @[RISCV_ex_control.scala 59:25]
  wire  _T_17 = io_instr_type_i == 6'h1c | _T_16; // @[RISCV_ex_control.scala 58:44]
  wire  _T_18 = io_instr_type_i == 6'h1e; // @[RISCV_ex_control.scala 60:25]
  wire  _T_19 = _T_17 | _T_18; // @[RISCV_ex_control.scala 59:44]
  wire  _T_20 = io_instr_type_i == 6'h1f; // @[RISCV_ex_control.scala 61:25]
  wire  _T_21 = _T_19 | _T_20; // @[RISCV_ex_control.scala 60:44]
  wire  _T_22 = io_instr_type_i == 6'h20; // @[RISCV_ex_control.scala 62:25]
  wire  _T_23 = _T_21 | _T_22; // @[RISCV_ex_control.scala 61:44]
  wire  _T_24 = io_instr_type_i == 6'h21; // @[RISCV_ex_control.scala 63:25]
  wire  _T_25 = _T_23 | _T_24; // @[RISCV_ex_control.scala 62:45]
  wire  _T_26 = io_instr_type_i == 6'h22; // @[RISCV_ex_control.scala 64:25]
  wire  _T_27 = _T_25 | _T_26; // @[RISCV_ex_control.scala 63:44]
  wire  _T_28 = io_instr_type_i == 6'h23; // @[RISCV_ex_control.scala 65:25]
  wire  _T_29 = _T_27 | _T_28; // @[RISCV_ex_control.scala 64:44]
  wire  _T_30 = io_instr_type_i == 6'h24; // @[RISCV_ex_control.scala 66:25]
  wire  _T_31 = _T_29 | _T_30; // @[RISCV_ex_control.scala 65:44]
  wire  _T_32 = io_instr_type_i == 6'h25; // @[RISCV_ex_control.scala 67:25]
  wire  _T_33 = _T_31 | _T_32; // @[RISCV_ex_control.scala 66:43]
  wire  _T_36 = 6'hb == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_39 = 6'hc == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_42 = 6'hd == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_45 = 6'he == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_48 = 6'hf == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_51 = 6'h10 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_54 = 6'h11 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_57 = 6'h12 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_60 = 6'h1 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_63 = 6'h3 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_66 = 6'h4 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_69 = 6'h2 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_72 = 6'h1c == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_75 = 6'h13 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_78 = 6'h5 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_81 = 6'h6 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_84 = 6'h7 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_87 = 6'h8 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_90 = 6'h9 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_93 = 6'ha == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_96 = 6'h1d == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_99 = 6'h1f == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_102 = 6'h14 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_105 = 6'h20 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_108 = 6'h15 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_111 = 6'h21 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_114 = 6'h16 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_117 = 6'h24 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_120 = 6'h17 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_123 = 6'h25 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_126 = 6'h18 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_129 = 6'h1e == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_132 = 6'h19 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_135 = 6'h22 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_138 = 6'h1a == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_141 = 6'h23 == io_instr_type_i; // @[Conditional.scala 37:30]
  wire  _T_144 = 6'h1b == io_instr_type_i; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_2 = _T_144 ? 3'h7 : 3'h0; // @[Conditional.scala 39:67 RISCV_ex_control.scala 185:19 RISCV_ex_control.scala 74:15]
  wire [2:0] _GEN_3 = _T_141 ? 3'h7 : _GEN_2; // @[Conditional.scala 39:67 RISCV_ex_control.scala 182:19]
  wire [3:0] _GEN_4 = _T_138 ? 4'h8 : {{1'd0}, _GEN_3}; // @[Conditional.scala 39:67 RISCV_ex_control.scala 179:19]
  wire [3:0] _GEN_5 = _T_135 ? 4'h8 : _GEN_4; // @[Conditional.scala 39:67 RISCV_ex_control.scala 176:19]
  wire [3:0] _GEN_6 = _T_132 ? 4'h6 : _GEN_5; // @[Conditional.scala 39:67 RISCV_ex_control.scala 173:19]
  wire [3:0] _GEN_7 = _T_129 ? 4'h6 : _GEN_6; // @[Conditional.scala 39:67 RISCV_ex_control.scala 170:19]
  wire [3:0] _GEN_8 = _T_126 ? 4'h5 : _GEN_7; // @[Conditional.scala 39:67 RISCV_ex_control.scala 167:19]
  wire [3:0] _GEN_9 = _T_123 ? 4'h5 : _GEN_8; // @[Conditional.scala 39:67 RISCV_ex_control.scala 164:19]
  wire [3:0] _GEN_10 = _T_120 ? 4'h4 : _GEN_9; // @[Conditional.scala 39:67 RISCV_ex_control.scala 161:19]
  wire [3:0] _GEN_11 = _T_117 ? 4'h4 : _GEN_10; // @[Conditional.scala 39:67 RISCV_ex_control.scala 158:19]
  wire [3:0] _GEN_12 = _T_114 ? 4'h3 : _GEN_11; // @[Conditional.scala 39:67 RISCV_ex_control.scala 155:19]
  wire [3:0] _GEN_13 = _T_111 ? 4'h3 : _GEN_12; // @[Conditional.scala 39:67 RISCV_ex_control.scala 152:19]
  wire [3:0] _GEN_14 = _T_108 ? 4'hb : _GEN_13; // @[Conditional.scala 39:67 RISCV_ex_control.scala 149:19]
  wire [3:0] _GEN_15 = _T_105 ? 4'hb : _GEN_14; // @[Conditional.scala 39:67 RISCV_ex_control.scala 146:19]
  wire [3:0] _GEN_16 = _T_102 ? 4'ha : _GEN_15; // @[Conditional.scala 39:67 RISCV_ex_control.scala 143:19]
  wire [3:0] _GEN_17 = _T_99 ? 4'ha : _GEN_16; // @[Conditional.scala 39:67 RISCV_ex_control.scala 140:19]
  wire [3:0] _GEN_18 = _T_96 ? 4'h2 : _GEN_17; // @[Conditional.scala 39:67 RISCV_ex_control.scala 137:19]
  wire [3:0] _GEN_19 = _T_93 ? 4'h1 : _GEN_18; // @[Conditional.scala 39:67 RISCV_ex_control.scala 134:19]
  wire [3:0] _GEN_20 = _T_90 ? 4'h1 : _GEN_19; // @[Conditional.scala 39:67 RISCV_ex_control.scala 131:19]
  wire [3:0] _GEN_21 = _T_87 ? 4'h1 : _GEN_20; // @[Conditional.scala 39:67 RISCV_ex_control.scala 128:19]
  wire [3:0] _GEN_22 = _T_84 ? 4'h1 : _GEN_21; // @[Conditional.scala 39:67 RISCV_ex_control.scala 125:19]
  wire [3:0] _GEN_23 = _T_81 ? 4'h1 : _GEN_22; // @[Conditional.scala 39:67 RISCV_ex_control.scala 122:19]
  wire [3:0] _GEN_24 = _T_78 ? 4'h1 : _GEN_23; // @[Conditional.scala 39:67 RISCV_ex_control.scala 119:19]
  wire [3:0] _GEN_25 = _T_75 ? 4'h1 : _GEN_24; // @[Conditional.scala 39:67 RISCV_ex_control.scala 116:19]
  wire [3:0] _GEN_26 = _T_72 ? 4'h1 : _GEN_25; // @[Conditional.scala 39:67 RISCV_ex_control.scala 113:19]
  wire [3:0] _GEN_27 = _T_69 ? 4'h1 : _GEN_26; // @[Conditional.scala 39:67 RISCV_ex_control.scala 110:19]
  wire [3:0] _GEN_28 = _T_66 ? 4'h1 : _GEN_27; // @[Conditional.scala 39:67 RISCV_ex_control.scala 107:19]
  wire [3:0] _GEN_29 = _T_63 ? 4'h1 : _GEN_28; // @[Conditional.scala 39:67 RISCV_ex_control.scala 104:19]
  wire [3:0] _GEN_30 = _T_60 ? 4'h9 : _GEN_29; // @[Conditional.scala 39:67 RISCV_ex_control.scala 101:19]
  wire [3:0] _GEN_31 = _T_57 ? 4'h1 : _GEN_30; // @[Conditional.scala 39:67 RISCV_ex_control.scala 98:19]
  wire [3:0] _GEN_32 = _T_54 ? 4'h1 : _GEN_31; // @[Conditional.scala 39:67 RISCV_ex_control.scala 95:19]
  wire [3:0] _GEN_33 = _T_51 ? 4'h1 : _GEN_32; // @[Conditional.scala 39:67 RISCV_ex_control.scala 92:19]
  wire [3:0] _GEN_34 = _T_48 ? 4'h1 : _GEN_33; // @[Conditional.scala 39:67 RISCV_ex_control.scala 89:19]
  wire [3:0] _GEN_35 = _T_45 ? 4'h1 : _GEN_34; // @[Conditional.scala 39:67 RISCV_ex_control.scala 86:19]
  wire [3:0] _GEN_36 = _T_42 ? 4'h1 : _GEN_35; // @[Conditional.scala 39:67 RISCV_ex_control.scala 83:19]
  wire [3:0] _GEN_37 = _T_39 ? 4'h1 : _GEN_36; // @[Conditional.scala 39:67 RISCV_ex_control.scala 80:19]
  wire [2:0] _GEN_39 = _T_93 ? 3'h6 : 3'h0; // @[Conditional.scala 39:67 RISCV_ex_control.scala 208:20 RISCV_ex_control.scala 190:16]
  wire [2:0] _GEN_40 = _T_90 ? 3'h4 : _GEN_39; // @[Conditional.scala 39:67 RISCV_ex_control.scala 205:20]
  wire [2:0] _GEN_41 = _T_87 ? 3'h5 : _GEN_40; // @[Conditional.scala 39:67 RISCV_ex_control.scala 202:20]
  wire [2:0] _GEN_42 = _T_84 ? 3'h3 : _GEN_41; // @[Conditional.scala 39:67 RISCV_ex_control.scala 199:20]
  wire [2:0] _GEN_43 = _T_81 ? 3'h2 : _GEN_42; // @[Conditional.scala 39:67 RISCV_ex_control.scala 196:20]
  wire  _io_mem_wirte_o_T_1 = io_instr_type_i == 6'h11; // @[RISCV_ex_control.scala 214:37]
  wire  _io_mem_wirte_o_T_2 = io_instr_type_i == 6'h10 | _io_mem_wirte_o_T_1; // @[RISCV_ex_control.scala 213:55]
  wire  _io_mem_wirte_o_T_3 = io_instr_type_i == 6'h12; // @[RISCV_ex_control.scala 215:37]
  wire [1:0] _GEN_45 = _T_42 ? 2'h3 : 2'h0; // @[Conditional.scala 39:67 RISCV_ex_control.scala 240:19 RISCV_ex_control.scala 216:15]
  wire [2:0] _GEN_46 = _T_48 ? 3'h5 : {{1'd0}, _GEN_45}; // @[Conditional.scala 39:67 RISCV_ex_control.scala 237:19]
  wire [2:0] _GEN_47 = _T_39 ? 3'h2 : _GEN_46; // @[Conditional.scala 39:67 RISCV_ex_control.scala 234:19]
  wire [2:0] _GEN_48 = _T_45 ? 3'h4 : _GEN_47; // @[Conditional.scala 39:67 RISCV_ex_control.scala 231:19]
  wire [2:0] _GEN_49 = _T_36 ? 3'h1 : _GEN_48; // @[Conditional.scala 39:67 RISCV_ex_control.scala 228:19]
  wire [3:0] _GEN_50 = _T_57 ? 4'h8 : {{1'd0}, _GEN_49}; // @[Conditional.scala 39:67 RISCV_ex_control.scala 225:19]
  wire [3:0] _GEN_51 = _T_54 ? 4'h7 : _GEN_50; // @[Conditional.scala 39:67 RISCV_ex_control.scala 222:19]
  wire  _io_reg_write_o_T_2 = io_instr_type_i == 6'h1 | _T; // @[RISCV_ex_control.scala 245:56]
  wire  _io_reg_write_o_T_3 = io_instr_type_i == 6'h13; // @[RISCV_ex_control.scala 247:37]
  wire  _io_reg_write_o_T_4 = _io_reg_write_o_T_2 | _io_reg_write_o_T_3; // @[RISCV_ex_control.scala 246:58]
  wire  _io_reg_write_o_T_5 = io_instr_type_i == 6'h14; // @[RISCV_ex_control.scala 248:37]
  wire  _io_reg_write_o_T_6 = _io_reg_write_o_T_4 | _io_reg_write_o_T_5; // @[RISCV_ex_control.scala 247:57]
  wire  _io_reg_write_o_T_7 = io_instr_type_i == 6'h15; // @[RISCV_ex_control.scala 249:37]
  wire  _io_reg_write_o_T_8 = _io_reg_write_o_T_6 | _io_reg_write_o_T_7; // @[RISCV_ex_control.scala 248:57]
  wire  _io_reg_write_o_T_9 = io_instr_type_i == 6'h16; // @[RISCV_ex_control.scala 250:37]
  wire  _io_reg_write_o_T_10 = _io_reg_write_o_T_8 | _io_reg_write_o_T_9; // @[RISCV_ex_control.scala 249:58]
  wire  _io_reg_write_o_T_11 = io_instr_type_i == 6'h17; // @[RISCV_ex_control.scala 251:37]
  wire  _io_reg_write_o_T_12 = _io_reg_write_o_T_10 | _io_reg_write_o_T_11; // @[RISCV_ex_control.scala 250:57]
  wire  _io_reg_write_o_T_13 = io_instr_type_i == 6'h18; // @[RISCV_ex_control.scala 252:37]
  wire  _io_reg_write_o_T_14 = _io_reg_write_o_T_12 | _io_reg_write_o_T_13; // @[RISCV_ex_control.scala 251:56]
  wire  _io_reg_write_o_T_15 = io_instr_type_i == 6'h19; // @[RISCV_ex_control.scala 253:37]
  wire  _io_reg_write_o_T_16 = _io_reg_write_o_T_14 | _io_reg_write_o_T_15; // @[RISCV_ex_control.scala 252:57]
  wire  _io_reg_write_o_T_17 = io_instr_type_i == 6'h1a; // @[RISCV_ex_control.scala 254:37]
  wire  _io_reg_write_o_T_18 = _io_reg_write_o_T_16 | _io_reg_write_o_T_17; // @[RISCV_ex_control.scala 253:57]
  wire  _io_reg_write_o_T_19 = io_instr_type_i == 6'h1b; // @[RISCV_ex_control.scala 255:37]
  wire  _io_reg_write_o_T_20 = _io_reg_write_o_T_18 | _io_reg_write_o_T_19; // @[RISCV_ex_control.scala 254:57]
  wire  _io_reg_write_o_T_22 = _io_reg_write_o_T_20 | _T_15; // @[RISCV_ex_control.scala 255:57]
  wire  _io_reg_write_o_T_24 = _io_reg_write_o_T_22 | _T_16; // @[RISCV_ex_control.scala 256:56]
  wire  _io_reg_write_o_T_26 = _io_reg_write_o_T_24 | _T_18; // @[RISCV_ex_control.scala 257:56]
  wire  _io_reg_write_o_T_28 = _io_reg_write_o_T_26 | _T_20; // @[RISCV_ex_control.scala 258:56]
  wire  _io_reg_write_o_T_30 = _io_reg_write_o_T_28 | _T_22; // @[RISCV_ex_control.scala 259:56]
  wire  _io_reg_write_o_T_32 = _io_reg_write_o_T_30 | _T_24; // @[RISCV_ex_control.scala 260:57]
  wire  _io_reg_write_o_T_34 = _io_reg_write_o_T_32 | _T_26; // @[RISCV_ex_control.scala 261:56]
  wire  _io_reg_write_o_T_36 = _io_reg_write_o_T_34 | _T_28; // @[RISCV_ex_control.scala 262:56]
  wire  _io_reg_write_o_T_38 = _io_reg_write_o_T_36 | _T_30; // @[RISCV_ex_control.scala 263:56]
  wire  _io_reg_write_o_T_40 = _io_reg_write_o_T_38 | _T_32; // @[RISCV_ex_control.scala 264:55]
  wire  _io_reg_write_o_T_41 = io_instr_type_i == 6'hb; // @[RISCV_ex_control.scala 266:37]
  wire  _io_reg_write_o_T_42 = _io_reg_write_o_T_40 | _io_reg_write_o_T_41; // @[RISCV_ex_control.scala 265:56]
  wire  _io_reg_write_o_T_43 = io_instr_type_i == 6'hc; // @[RISCV_ex_control.scala 267:37]
  wire  _io_reg_write_o_T_44 = _io_reg_write_o_T_42 | _io_reg_write_o_T_43; // @[RISCV_ex_control.scala 266:55]
  wire  _io_reg_write_o_T_45 = io_instr_type_i == 6'hd; // @[RISCV_ex_control.scala 268:37]
  wire  _io_reg_write_o_T_46 = _io_reg_write_o_T_44 | _io_reg_write_o_T_45; // @[RISCV_ex_control.scala 267:55]
  wire  _io_reg_write_o_T_47 = io_instr_type_i == 6'he; // @[RISCV_ex_control.scala 269:37]
  wire  _io_reg_write_o_T_48 = _io_reg_write_o_T_46 | _io_reg_write_o_T_47; // @[RISCV_ex_control.scala 268:55]
  wire  _io_reg_write_o_T_49 = io_instr_type_i == 6'hf; // @[RISCV_ex_control.scala 270:37]
  wire  _io_reg_write_o_T_50 = _io_reg_write_o_T_48 | _io_reg_write_o_T_49; // @[RISCV_ex_control.scala 269:56]
  wire  _io_reg_write_o_T_52 = _io_reg_write_o_T_50 | _io_jump_o_T; // @[RISCV_ex_control.scala 270:56]
  wire  _io_reg_write_o_T_54 = _io_reg_write_o_T_52 | _io_jump_o_T_1; // @[RISCV_ex_control.scala 271:57]
  wire  _io_reg_write_o_T_56 = _io_reg_write_o_T_54 | _io_csr_write_o_T; // @[RISCV_ex_control.scala 272:56]
  wire  _io_reg_write_o_T_58 = _io_reg_write_o_T_56 | _io_csr_write_o_T_1; // @[RISCV_ex_control.scala 273:58]
  wire  _io_reg_write_o_T_60 = _io_reg_write_o_T_58 | _io_csr_write_o_T_3; // @[RISCV_ex_control.scala 274:58]
  wire  _io_reg_write_o_T_62 = _io_reg_write_o_T_60 | _io_csr_write_o_T_5; // @[RISCV_ex_control.scala 275:58]
  wire  _io_reg_write_o_T_64 = _io_reg_write_o_T_62 | _io_csr_write_o_T_7; // @[RISCV_ex_control.scala 276:59]
  wire  _T_189 = _io_reg_write_o_T_41 | _io_reg_write_o_T_43; // @[RISCV_ex_control.scala 279:43]
  wire  _T_191 = _T_189 | _io_reg_write_o_T_45; // @[RISCV_ex_control.scala 280:43]
  wire  _T_193 = _T_191 | _io_reg_write_o_T_47; // @[RISCV_ex_control.scala 281:43]
  wire  _T_195 = _T_193 | _io_reg_write_o_T_49; // @[RISCV_ex_control.scala 282:44]
  wire  _T_198 = _io_jump_o_T_1 | _io_jump_o_T; // @[RISCV_ex_control.scala 285:51]
  wire [1:0] _GEN_53 = _io_csr_write_o_T_10 ? 2'h3 : 2'h1; // @[RISCV_ex_control.scala 293:56 RISCV_ex_control.scala 294:24 RISCV_ex_control.scala 296:24]
  wire [1:0] _GEN_54 = _T_198 ? 2'h2 : _GEN_53; // @[RISCV_ex_control.scala 286:53 RISCV_ex_control.scala 287:24]
  assign io_jump_o = io_instr_type_i == 6'h4 | io_instr_type_i == 6'h3; // @[RISCV_ex_control.scala 28:52]
  assign io_branch_o = _io_branch_o_T_8 | _io_branch_o_T_9; // @[RISCV_ex_control.scala 33:54]
  assign io_alu_op1_src_o = _T_12 | _io_branch_o_T_9; // @[RISCV_ex_control.scala 50:45]
  assign io_alu_op2_src_o = _T_33 ? 1'h0 : 1'h1; // @[RISCV_ex_control.scala 67:45 RISCV_ex_control.scala 68:22 RISCV_ex_control.scala 70:22]
  assign io_alu_op_o = _T_36 ? 4'h1 : _GEN_37; // @[Conditional.scala 40:58 RISCV_ex_control.scala 77:19]
  assign io_comp_op_o = _T_78 ? 3'h1 : _GEN_43; // @[Conditional.scala 40:58 RISCV_ex_control.scala 193:20]
  assign io_mem_wirte_o = _io_mem_wirte_o_T_2 | _io_mem_wirte_o_T_3; // @[RISCV_ex_control.scala 214:55]
  assign io_mem_op_o = _T_51 ? 4'h6 : _GEN_51; // @[Conditional.scala 40:58 RISCV_ex_control.scala 219:19]
  assign io_reg_write_o = _io_reg_write_o_T_64 | _io_csr_write_o_T_9; // @[RISCV_ex_control.scala 277:59]
  assign io_reg_write_src_o = _T_195 ? 2'h0 : _GEN_54; // @[RISCV_ex_control.scala 283:45 RISCV_ex_control.scala 284:24]
  assign io_csr_write_o = _io_csr_write_o_T_8 | _io_csr_write_o_T_9; // @[RISCV_ex_control.scala 40:59]
endmodule
module RISCV_comp(
  input  [2:0]  io_comp_op_i,
  input  [31:0] io_op_a_i,
  input  [31:0] io_op_b_i,
  output        io_result_o
);
  wire  _T_2 = 3'h1 == io_comp_op_i; // @[Conditional.scala 37:30]
  wire  _T_5 = 3'h2 == io_comp_op_i; // @[Conditional.scala 37:30]
  wire  _T_8 = 3'h3 == io_comp_op_i; // @[Conditional.scala 37:30]
  wire  _T_11 = 3'h4 == io_comp_op_i; // @[Conditional.scala 37:30]
  wire  _T_14 = 3'h5 == io_comp_op_i; // @[Conditional.scala 37:30]
  wire  _T_17 = 3'h6 == io_comp_op_i; // @[Conditional.scala 37:30]
  wire  _GEN_0 = _T_17 & io_op_a_i >= io_op_b_i; // @[Conditional.scala 39:67 RISCV_comp.scala 32:19 RISCV_comp.scala 14:15]
  wire  _GEN_1 = _T_14 ? $signed(io_op_a_i) >= $signed(io_op_b_i) : _GEN_0; // @[Conditional.scala 39:67 RISCV_comp.scala 29:19]
  wire  _GEN_2 = _T_11 ? io_op_a_i < io_op_b_i : _GEN_1; // @[Conditional.scala 39:67 RISCV_comp.scala 26:19]
  wire  _GEN_3 = _T_8 ? $signed(io_op_a_i) < $signed(io_op_b_i) : _GEN_2; // @[Conditional.scala 39:67 RISCV_comp.scala 23:19]
  wire  _GEN_4 = _T_5 ? io_op_a_i != io_op_b_i : _GEN_3; // @[Conditional.scala 39:67 RISCV_comp.scala 20:19]
  assign io_result_o = _T_2 ? io_op_a_i == io_op_b_i : _GEN_4; // @[Conditional.scala 40:58 RISCV_comp.scala 17:19]
endmodule
module RISCV_alu(
  input  [31:0] io_op_a_i,
  input  [31:0] io_op_b_i,
  input  [3:0]  io_operation_i,
  output [31:0] io_result_o
);
  wire  _T_2 = 4'h1 == io_operation_i; // @[Conditional.scala 37:30]
  wire [31:0] _io_result_o_T_1 = io_op_a_i + io_op_b_i; // @[RISCV_alu.scala 17:32]
  wire  _T_5 = 4'h2 == io_operation_i; // @[Conditional.scala 37:30]
  wire [31:0] _io_result_o_T_3 = io_op_a_i - io_op_b_i; // @[RISCV_alu.scala 20:32]
  wire  _T_8 = 4'h5 == io_operation_i; // @[Conditional.scala 37:30]
  wire [31:0] _io_result_o_T_4 = io_op_a_i & io_op_b_i; // @[RISCV_alu.scala 23:32]
  wire  _T_11 = 4'h4 == io_operation_i; // @[Conditional.scala 37:30]
  wire [31:0] _io_result_o_T_5 = io_op_a_i | io_op_b_i; // @[RISCV_alu.scala 26:32]
  wire  _T_14 = 4'h3 == io_operation_i; // @[Conditional.scala 37:30]
  wire [31:0] _io_result_o_T_6 = io_op_a_i ^ io_op_b_i; // @[RISCV_alu.scala 29:32]
  wire  _T_17 = 4'h6 == io_operation_i; // @[Conditional.scala 37:30]
  wire [62:0] _GEN_12 = {{31'd0}, io_op_a_i}; // @[RISCV_alu.scala 32:32]
  wire [62:0] _io_result_o_T_8 = _GEN_12 << io_op_b_i[4:0]; // @[RISCV_alu.scala 32:32]
  wire  _T_20 = 4'h7 == io_operation_i; // @[Conditional.scala 37:30]
  wire [31:0] _io_result_o_T_9 = io_op_a_i; // @[RISCV_alu.scala 35:33]
  wire [31:0] _io_result_o_T_12 = $signed(io_op_a_i) >>> io_op_b_i[4:0]; // @[RISCV_alu.scala 35:66]
  wire  _T_23 = 4'h8 == io_operation_i; // @[Conditional.scala 37:30]
  wire [31:0] _io_result_o_T_14 = io_op_a_i >> io_op_b_i[4:0]; // @[RISCV_alu.scala 38:32]
  wire  _T_26 = 4'h9 == io_operation_i; // @[Conditional.scala 37:30]
  wire  _T_29 = 4'ha == io_operation_i; // @[Conditional.scala 37:30]
  wire [31:0] _io_result_o_T_16 = io_op_b_i; // @[RISCV_alu.scala 44:51]
  wire  _T_32 = 4'hb == io_operation_i; // @[Conditional.scala 37:30]
  wire  _T_35 = 4'h0 == io_operation_i; // @[Conditional.scala 37:30]
  wire [31:0] _GEN_0 = _T_35 ? 32'hdeadbeef : 32'h0; // @[Conditional.scala 39:67 RISCV_alu.scala 50:19 RISCV_alu.scala 14:15]
  wire [31:0] _GEN_1 = _T_32 ? {{31'd0}, io_op_a_i < io_op_b_i} : _GEN_0; // @[Conditional.scala 39:67 RISCV_alu.scala 47:19]
  wire [31:0] _GEN_2 = _T_29 ? {{31'd0}, $signed(_io_result_o_T_9) < $signed(_io_result_o_T_16)} : _GEN_1; // @[Conditional.scala 39:67 RISCV_alu.scala 44:19]
  wire [31:0] _GEN_3 = _T_26 ? io_op_b_i : _GEN_2; // @[Conditional.scala 39:67 RISCV_alu.scala 41:19]
  wire [31:0] _GEN_4 = _T_23 ? _io_result_o_T_14 : _GEN_3; // @[Conditional.scala 39:67 RISCV_alu.scala 38:19]
  wire [31:0] _GEN_5 = _T_20 ? _io_result_o_T_12 : _GEN_4; // @[Conditional.scala 39:67 RISCV_alu.scala 35:19]
  wire [62:0] _GEN_6 = _T_17 ? _io_result_o_T_8 : {{31'd0}, _GEN_5}; // @[Conditional.scala 39:67 RISCV_alu.scala 32:19]
  wire [62:0] _GEN_7 = _T_14 ? {{31'd0}, _io_result_o_T_6} : _GEN_6; // @[Conditional.scala 39:67 RISCV_alu.scala 29:19]
  wire [62:0] _GEN_8 = _T_11 ? {{31'd0}, _io_result_o_T_5} : _GEN_7; // @[Conditional.scala 39:67 RISCV_alu.scala 26:19]
  wire [62:0] _GEN_9 = _T_8 ? {{31'd0}, _io_result_o_T_4} : _GEN_8; // @[Conditional.scala 39:67 RISCV_alu.scala 23:19]
  wire [62:0] _GEN_10 = _T_5 ? {{31'd0}, _io_result_o_T_3} : _GEN_9; // @[Conditional.scala 39:67 RISCV_alu.scala 20:19]
  wire [62:0] _GEN_11 = _T_2 ? {{31'd0}, _io_result_o_T_1} : _GEN_10; // @[Conditional.scala 40:58 RISCV_alu.scala 17:19]
  assign io_result_o = _GEN_11[31:0];
endmodule
module RISCV_pipeline_control(
  input        io_data_stall_i,
  input        io_control_stall_i,
  input        io_int_stall_i,
  input  [6:0] io_csr_state_i,
  output       io_pc_we_o,
  output       io_ifid_clear_o,
  output       io_ifid_we_o,
  output       io_idex_clear_o,
  output       io_idex_we_o,
  output       io_exmm_clear_o,
  output       io_exmm_we_o,
  output       io_mmwb_clear_o,
  output       io_mmwb_we_o
);
  wire  _T = io_csr_state_i == 7'h2; // @[RISCV_pipeline_control.scala 26:25]
  wire  _T_1 = io_csr_state_i == 7'h4; // @[RISCV_pipeline_control.scala 36:31]
  wire  _T_4 = io_csr_state_i == 7'h40 | io_csr_state_i == 7'h20; // @[RISCV_pipeline_control.scala 46:50]
  wire  _GEN_2 = io_csr_state_i == 7'h4 ? 1'h0 : _T_4; // @[RISCV_pipeline_control.scala 36:52 RISCV_pipeline_control.scala 37:18]
  wire  _GEN_4 = io_csr_state_i == 7'h4 | _T_4; // @[RISCV_pipeline_control.scala 36:52 RISCV_pipeline_control.scala 39:23]
  wire  _GEN_6 = io_csr_state_i == 7'h2 ? 1'h0 : _GEN_2; // @[RISCV_pipeline_control.scala 26:46 RISCV_pipeline_control.scala 27:18]
  wire  _GEN_8 = io_csr_state_i == 7'h2 ? 1'h0 : _GEN_4; // @[RISCV_pipeline_control.scala 26:46 RISCV_pipeline_control.scala 29:23]
  wire  _GEN_10 = io_csr_state_i == 7'h2 | _GEN_2; // @[RISCV_pipeline_control.scala 26:46 RISCV_pipeline_control.scala 34:20]
  wire  _GEN_11 = io_csr_state_i == 7'h2 ? 1'h0 : _T_1; // @[RISCV_pipeline_control.scala 26:46 RISCV_pipeline_control.scala 35:23]
  wire  _GEN_12 = io_data_stall_i ? ~io_data_stall_i : 1'h1; // @[RISCV_pipeline_control.scala 77:33 RISCV_pipeline_control.scala 78:16 RISCV_pipeline_control.scala 88:16]
  wire  _GEN_15 = io_data_stall_i ? 1'h0 : 1'h1; // @[RISCV_pipeline_control.scala 77:33 RISCV_pipeline_control.scala 81:18 RISCV_pipeline_control.scala 91:18]
  wire  _GEN_18 = io_control_stall_i | _GEN_12; // @[RISCV_pipeline_control.scala 67:35 RISCV_pipeline_control.scala 68:16]
  wire  _GEN_19 = io_control_stall_i ? 1'h0 : _GEN_12; // @[RISCV_pipeline_control.scala 67:35 RISCV_pipeline_control.scala 69:18]
  wire  _GEN_21 = io_control_stall_i ? 1'h0 : _GEN_15; // @[RISCV_pipeline_control.scala 67:35 RISCV_pipeline_control.scala 71:18]
  wire  _GEN_22 = io_control_stall_i | io_data_stall_i; // @[RISCV_pipeline_control.scala 67:35 RISCV_pipeline_control.scala 72:21]
  assign io_pc_we_o = io_int_stall_i ? _GEN_6 : _GEN_18; // @[RISCV_pipeline_control.scala 25:25]
  assign io_ifid_clear_o = io_int_stall_i ? _GEN_8 : io_control_stall_i; // @[RISCV_pipeline_control.scala 25:25]
  assign io_ifid_we_o = io_int_stall_i ? 1'h0 : _GEN_19; // @[RISCV_pipeline_control.scala 25:25]
  assign io_idex_clear_o = io_int_stall_i ? _GEN_8 : _GEN_22; // @[RISCV_pipeline_control.scala 25:25]
  assign io_idex_we_o = io_int_stall_i ? 1'h0 : _GEN_21; // @[RISCV_pipeline_control.scala 25:25]
  assign io_exmm_clear_o = io_int_stall_i & _T; // @[RISCV_pipeline_control.scala 25:25]
  assign io_exmm_we_o = io_int_stall_i ? _GEN_6 : 1'h1; // @[RISCV_pipeline_control.scala 25:25]
  assign io_mmwb_clear_o = io_int_stall_i & _GEN_11; // @[RISCV_pipeline_control.scala 25:25]
  assign io_mmwb_we_o = io_int_stall_i ? _GEN_10 : 1'h1; // @[RISCV_pipeline_control.scala 25:25]
endmodule
module RISCV_clint(
  input         clock,
  input         reset,
  input  [7:0]  io_int_flag_i,
  input  [31:0] io_idex_instr_data_i,
  input  [31:0] io_idex_instr_addr_i,
  input  [31:0] io_ifid_instr_addr_i,
  input  [31:0] io_csr_mtvec_i,
  input  [31:0] io_csr_mepc_i,
  input  [31:0] io_csr_mstatus_i,
  output [31:0] io_instr_addr_o,
  output        io_int_stall_o,
  output [6:0]  io_csr_state_o,
  output        io_csr_write_o,
  output [31:0] io_csr_waddr_o,
  output [31:0] io_csr_wdata_o
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [6:0] csr_state; // @[RISCV_clint.scala 30:26]
  reg [31:0] cause; // @[RISCV_clint.scala 32:22]
  reg [31:0] mepc; // @[RISCV_clint.scala 34:21]
  wire  _T_3 = io_idex_instr_data_i == 32'h73; // @[RISCV_clint.scala 46:30]
  wire  _T_4 = io_idex_instr_data_i == 32'h100073; // @[RISCV_clint.scala 46:71]
  wire [3:0] _GEN_1 = io_idex_instr_data_i == 32'h30200073 ? 4'h8 : 4'h1; // @[RISCV_clint.scala 50:54 RISCV_clint.scala 51:15 RISCV_clint.scala 53:15]
  wire [3:0] _GEN_2 = io_int_flag_i != 8'h0 & io_csr_mstatus_i[3] ? 4'h4 : _GEN_1; // @[RISCV_clint.scala 48:71 RISCV_clint.scala 49:15]
  wire [3:0] int_state = io_idex_instr_data_i == 32'h73 | io_idex_instr_data_i == 32'h100073 ? 4'h2 : _GEN_2; // @[RISCV_clint.scala 46:90 RISCV_clint.scala 47:15]
  wire  _T_10 = 7'h1 == csr_state; // @[Conditional.scala 37:30]
  wire  _T_12 = int_state == 4'h8; // @[RISCV_clint.scala 59:60]
  wire [3:0] _GEN_4 = _T_4 ? 4'h3 : 4'ha; // @[RISCV_clint.scala 63:62 RISCV_clint.scala 64:17 RISCV_clint.scala 66:17]
  wire [3:0] _GEN_5 = _T_3 ? 4'hb : _GEN_4; // @[RISCV_clint.scala 61:54 RISCV_clint.scala 62:17]
  wire  _T_17 = 7'h2 == csr_state; // @[Conditional.scala 37:30]
  wire  _T_18 = 7'h4 == csr_state; // @[Conditional.scala 37:30]
  wire [5:0] _GEN_12 = _T_12 ? 6'h20 : 6'h10; // @[RISCV_clint.scala 79:41 RISCV_clint.scala 80:19 RISCV_clint.scala 82:19]
  wire  _T_20 = 7'h10 == csr_state; // @[Conditional.scala 37:30]
  wire  _T_21 = 7'h8 == csr_state; // @[Conditional.scala 37:30]
  wire  _T_22 = 7'h40 == csr_state; // @[Conditional.scala 37:30]
  wire  _T_23 = 7'h20 == csr_state; // @[Conditional.scala 37:30]
  wire [6:0] _GEN_13 = _T_23 ? 7'h1 : csr_state; // @[Conditional.scala 39:67 RISCV_clint.scala 95:17 RISCV_clint.scala 30:26]
  wire [6:0] _GEN_14 = _T_22 ? 7'h1 : _GEN_13; // @[Conditional.scala 39:67 RISCV_clint.scala 92:17]
  wire [6:0] _GEN_15 = _T_21 ? 7'h40 : _GEN_14; // @[Conditional.scala 39:67 RISCV_clint.scala 89:17]
  wire [6:0] _GEN_16 = _T_20 ? 7'h8 : _GEN_15; // @[Conditional.scala 39:67 RISCV_clint.scala 86:17]
  wire [27:0] io_csr_wdata_o_hi_hi = io_csr_mstatus_i[31:4]; // @[RISCV_clint.scala 116:45]
  wire [2:0] io_csr_wdata_o_lo = io_csr_mstatus_i[2:0]; // @[RISCV_clint.scala 116:80]
  wire [31:0] _io_csr_wdata_o_T = {io_csr_wdata_o_hi_hi,1'h0,io_csr_wdata_o_lo}; // @[Cat.scala 30:58]
  wire  io_csr_wdata_o_hi_lo = io_csr_mstatus_i[7]; // @[RISCV_clint.scala 121:70]
  wire [31:0] _io_csr_wdata_o_T_1 = {io_csr_wdata_o_hi_hi,io_csr_wdata_o_hi_lo,io_csr_wdata_o_lo}; // @[Cat.scala 30:58]
  wire [29:0] _GEN_23 = _T_23 ? 30'h300 : 30'h0; // @[Conditional.scala 39:67 RISCV_clint.scala 120:22 RISCV_clint.scala 101:18]
  wire [31:0] _GEN_24 = _T_23 ? _io_csr_wdata_o_T_1 : 32'h0; // @[Conditional.scala 39:67 RISCV_clint.scala 121:22 RISCV_clint.scala 100:18]
  wire  _GEN_25 = _T_21 | _T_23; // @[Conditional.scala 39:67 RISCV_clint.scala 114:22]
  wire [29:0] _GEN_26 = _T_21 ? 30'h300 : _GEN_23; // @[Conditional.scala 39:67 RISCV_clint.scala 115:22]
  wire [31:0] _GEN_27 = _T_21 ? _io_csr_wdata_o_T : _GEN_24; // @[Conditional.scala 39:67 RISCV_clint.scala 116:22]
  wire  _GEN_28 = _T_22 | _GEN_25; // @[Conditional.scala 39:67 RISCV_clint.scala 109:22]
  wire [29:0] _GEN_29 = _T_22 ? 30'h342 : _GEN_26; // @[Conditional.scala 39:67 RISCV_clint.scala 110:22]
  wire [31:0] _GEN_30 = _T_22 ? cause : _GEN_27; // @[Conditional.scala 39:67 RISCV_clint.scala 111:22]
  wire [29:0] _GEN_32 = _T_20 ? 30'h341 : _GEN_29; // @[Conditional.scala 40:58 RISCV_clint.scala 105:22]
  wire [31:0] _GEN_34 = _T_23 ? io_csr_mepc_i : 32'h0; // @[Conditional.scala 39:67 RISCV_clint.scala 131:23 RISCV_clint.scala 125:19]
  assign io_instr_addr_o = _T_22 ? io_csr_mtvec_i : _GEN_34; // @[Conditional.scala 40:58 RISCV_clint.scala 128:23]
  assign io_int_stall_o = int_state != 4'h1 | csr_state != 7'h1; // @[RISCV_clint.scala 39:38]
  assign io_csr_state_o = csr_state; // @[RISCV_clint.scala 36:18]
  assign io_csr_write_o = _T_20 | _GEN_28; // @[Conditional.scala 40:58 RISCV_clint.scala 104:22]
  assign io_csr_waddr_o = {{2'd0}, _GEN_32}; // @[Conditional.scala 40:58 RISCV_clint.scala 105:22]
  assign io_csr_wdata_o = _T_20 ? mepc : _GEN_30; // @[Conditional.scala 40:58 RISCV_clint.scala 106:22]
  always @(posedge clock) begin
    if (reset) begin // @[RISCV_clint.scala 30:26]
      csr_state <= 7'h1; // @[RISCV_clint.scala 30:26]
    end else if (_T_10) begin // @[Conditional.scala 40:58]
      if (int_state == 4'h2 | int_state == 4'h8) begin // @[RISCV_clint.scala 59:78]
        csr_state <= 7'h2; // @[RISCV_clint.scala 68:19]
      end else if (int_state == 4'h4) begin // @[RISCV_clint.scala 69:56]
        csr_state <= 7'h2; // @[RISCV_clint.scala 72:19]
      end
    end else if (_T_17) begin // @[Conditional.scala 39:67]
      csr_state <= 7'h4; // @[RISCV_clint.scala 76:17]
    end else if (_T_18) begin // @[Conditional.scala 39:67]
      csr_state <= {{1'd0}, _GEN_12};
    end else begin
      csr_state <= _GEN_16;
    end
    if (reset) begin // @[RISCV_clint.scala 32:22]
      cause <= 32'h0; // @[RISCV_clint.scala 32:22]
    end else if (_T_10) begin // @[Conditional.scala 40:58]
      if (int_state == 4'h2 | int_state == 4'h8) begin // @[RISCV_clint.scala 59:78]
        cause <= {{28'd0}, _GEN_5};
      end else if (int_state == 4'h4) begin // @[RISCV_clint.scala 69:56]
        cause <= 32'h80000004; // @[RISCV_clint.scala 71:15]
      end
    end
    if (reset) begin // @[RISCV_clint.scala 34:21]
      mepc <= 32'h0; // @[RISCV_clint.scala 34:21]
    end else if (_T_10) begin // @[Conditional.scala 40:58]
      if (int_state == 4'h2 | int_state == 4'h8) begin // @[RISCV_clint.scala 59:78]
        mepc <= io_ifid_instr_addr_i; // @[RISCV_clint.scala 60:14]
      end else if (int_state == 4'h4) begin // @[RISCV_clint.scala 69:56]
        mepc <= io_idex_instr_addr_i; // @[RISCV_clint.scala 70:14]
      end
    end
  end
// Register and memory initialization
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
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  csr_state = _RAND_0[6:0];
  _RAND_1 = {1{`RANDOM}};
  cause = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  mepc = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RISCV_core(
  input         clock,
  input         reset,
  input  [31:0] io_boot_addr_i,
  output [31:0] io_instr_addr_o,
  input  [31:0] io_instr_data_i,
  output        io_data_we_o,
  output [3:0]  io_data_be_o,
  output [31:0] io_data_addr_o,
  output [31:0] io_data_wdata_o,
  input  [31:0] io_data_rdata_i,
  input  [7:0]  io_int_flag_i
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] decoder_io_instr_data_i; // @[RISCV_core.scala 112:23]
  wire [5:0] decoder_io_instr_type_o; // @[RISCV_core.scala 112:23]
  wire [4:0] decoder_io_rs1_addr_o; // @[RISCV_core.scala 112:23]
  wire [4:0] decoder_io_rs2_addr_o; // @[RISCV_core.scala 112:23]
  wire [4:0] decoder_io_rd_addr_o; // @[RISCV_core.scala 112:23]
  wire [31:0] decoder_io_imm_o; // @[RISCV_core.scala 112:23]
  wire [31:0] decoder_io_csr_raddr_o; // @[RISCV_core.scala 112:23]
  wire [31:0] decoder_io_csr_waddr_o; // @[RISCV_core.scala 112:23]
  wire  regfile_clock; // @[RISCV_core.scala 114:23]
  wire [4:0] regfile_io_reg_raddr_a_i; // @[RISCV_core.scala 114:23]
  wire [31:0] regfile_io_reg_rdata_a_o; // @[RISCV_core.scala 114:23]
  wire [4:0] regfile_io_reg_raddr_b_i; // @[RISCV_core.scala 114:23]
  wire [31:0] regfile_io_reg_rdata_b_o; // @[RISCV_core.scala 114:23]
  wire [4:0] regfile_io_reg_waddr_a_i; // @[RISCV_core.scala 114:23]
  wire [31:0] regfile_io_reg_wdata_a_i; // @[RISCV_core.scala 114:23]
  wire  regfile_io_reg_we_a_i; // @[RISCV_core.scala 114:23]
  wire  csr_regfile_clock; // @[RISCV_core.scala 116:27]
  wire  csr_regfile_reset; // @[RISCV_core.scala 116:27]
  wire  csr_regfile_io_csr_we_i; // @[RISCV_core.scala 116:27]
  wire [31:0] csr_regfile_io_csr_waddr_i; // @[RISCV_core.scala 116:27]
  wire [31:0] csr_regfile_io_csr_wdata_i; // @[RISCV_core.scala 116:27]
  wire [31:0] csr_regfile_io_csr_raddr_i; // @[RISCV_core.scala 116:27]
  wire [31:0] csr_regfile_io_csr_rdata_o; // @[RISCV_core.scala 116:27]
  wire  csr_regfile_io_clint_csr_we_i; // @[RISCV_core.scala 116:27]
  wire [31:0] csr_regfile_io_clint_csr_waddr_i; // @[RISCV_core.scala 116:27]
  wire [31:0] csr_regfile_io_clint_csr_wdata_i; // @[RISCV_core.scala 116:27]
  wire [31:0] csr_regfile_io_clint_csr_mtvec_o; // @[RISCV_core.scala 116:27]
  wire [31:0] csr_regfile_io_clint_csr_mepc_o; // @[RISCV_core.scala 116:27]
  wire [31:0] csr_regfile_io_clint_scr_mstatus_o; // @[RISCV_core.scala 116:27]
  wire [5:0] ex_control_io_instr_type_i; // @[RISCV_core.scala 118:26]
  wire  ex_control_io_jump_o; // @[RISCV_core.scala 118:26]
  wire  ex_control_io_branch_o; // @[RISCV_core.scala 118:26]
  wire  ex_control_io_alu_op1_src_o; // @[RISCV_core.scala 118:26]
  wire  ex_control_io_alu_op2_src_o; // @[RISCV_core.scala 118:26]
  wire [3:0] ex_control_io_alu_op_o; // @[RISCV_core.scala 118:26]
  wire [2:0] ex_control_io_comp_op_o; // @[RISCV_core.scala 118:26]
  wire  ex_control_io_mem_wirte_o; // @[RISCV_core.scala 118:26]
  wire [3:0] ex_control_io_mem_op_o; // @[RISCV_core.scala 118:26]
  wire  ex_control_io_reg_write_o; // @[RISCV_core.scala 118:26]
  wire [1:0] ex_control_io_reg_write_src_o; // @[RISCV_core.scala 118:26]
  wire  ex_control_io_csr_write_o; // @[RISCV_core.scala 118:26]
  wire [2:0] comp_io_comp_op_i; // @[RISCV_core.scala 120:20]
  wire [31:0] comp_io_op_a_i; // @[RISCV_core.scala 120:20]
  wire [31:0] comp_io_op_b_i; // @[RISCV_core.scala 120:20]
  wire  comp_io_result_o; // @[RISCV_core.scala 120:20]
  wire [31:0] alu_io_op_a_i; // @[RISCV_core.scala 122:19]
  wire [31:0] alu_io_op_b_i; // @[RISCV_core.scala 122:19]
  wire [3:0] alu_io_operation_i; // @[RISCV_core.scala 122:19]
  wire [31:0] alu_io_result_o; // @[RISCV_core.scala 122:19]
  wire  pipeline_control_io_data_stall_i; // @[RISCV_core.scala 124:32]
  wire  pipeline_control_io_control_stall_i; // @[RISCV_core.scala 124:32]
  wire  pipeline_control_io_int_stall_i; // @[RISCV_core.scala 124:32]
  wire [6:0] pipeline_control_io_csr_state_i; // @[RISCV_core.scala 124:32]
  wire  pipeline_control_io_pc_we_o; // @[RISCV_core.scala 124:32]
  wire  pipeline_control_io_ifid_clear_o; // @[RISCV_core.scala 124:32]
  wire  pipeline_control_io_ifid_we_o; // @[RISCV_core.scala 124:32]
  wire  pipeline_control_io_idex_clear_o; // @[RISCV_core.scala 124:32]
  wire  pipeline_control_io_idex_we_o; // @[RISCV_core.scala 124:32]
  wire  pipeline_control_io_exmm_clear_o; // @[RISCV_core.scala 124:32]
  wire  pipeline_control_io_exmm_we_o; // @[RISCV_core.scala 124:32]
  wire  pipeline_control_io_mmwb_clear_o; // @[RISCV_core.scala 124:32]
  wire  pipeline_control_io_mmwb_we_o; // @[RISCV_core.scala 124:32]
  wire  clint_clock; // @[RISCV_core.scala 126:21]
  wire  clint_reset; // @[RISCV_core.scala 126:21]
  wire [7:0] clint_io_int_flag_i; // @[RISCV_core.scala 126:21]
  wire [31:0] clint_io_idex_instr_data_i; // @[RISCV_core.scala 126:21]
  wire [31:0] clint_io_idex_instr_addr_i; // @[RISCV_core.scala 126:21]
  wire [31:0] clint_io_ifid_instr_addr_i; // @[RISCV_core.scala 126:21]
  wire [31:0] clint_io_csr_mtvec_i; // @[RISCV_core.scala 126:21]
  wire [31:0] clint_io_csr_mepc_i; // @[RISCV_core.scala 126:21]
  wire [31:0] clint_io_csr_mstatus_i; // @[RISCV_core.scala 126:21]
  wire [31:0] clint_io_instr_addr_o; // @[RISCV_core.scala 126:21]
  wire  clint_io_int_stall_o; // @[RISCV_core.scala 126:21]
  wire [6:0] clint_io_csr_state_o; // @[RISCV_core.scala 126:21]
  wire  clint_io_csr_write_o; // @[RISCV_core.scala 126:21]
  wire [31:0] clint_io_csr_waddr_o; // @[RISCV_core.scala 126:21]
  wire [31:0] clint_io_csr_wdata_o; // @[RISCV_core.scala 126:21]
  wire [31:0] pc_reset_next_pc = io_boot_addr_i + 32'h4; // @[RISCV_core.scala 131:38]
  reg [31:0] pc_current_pc; // @[RISCV_core.scala 132:19]
  reg [31:0] pc_next_pc; // @[RISCV_core.scala 132:19]
  reg [31:0] ifid_stage_regs_instr_addr; // @[RISCV_core.scala 139:32]
  reg [31:0] ifid_stage_regs_instr_data; // @[RISCV_core.scala 139:32]
  reg [31:0] ifid_stage_regs_instr_next_addr; // @[RISCV_core.scala 139:32]
  reg [31:0] idex_stage_regs_instr_addr; // @[RISCV_core.scala 168:32]
  reg [31:0] idex_stage_regs_instr_data; // @[RISCV_core.scala 168:32]
  reg [31:0] idex_stage_regs_instr_next_addr; // @[RISCV_core.scala 168:32]
  reg [31:0] idex_stage_regs_rs1_data; // @[RISCV_core.scala 168:32]
  reg [31:0] idex_stage_regs_rs2_data; // @[RISCV_core.scala 168:32]
  reg [31:0] idex_stage_regs_imm; // @[RISCV_core.scala 168:32]
  reg  idex_stage_regs_reg_write; // @[RISCV_core.scala 168:32]
  reg [1:0] idex_stage_regs_reg_write_src; // @[RISCV_core.scala 168:32]
  reg [4:0] idex_stage_regs_reg_write_addr; // @[RISCV_core.scala 168:32]
  reg  idex_stage_regs_mem_write; // @[RISCV_core.scala 168:32]
  reg [3:0] idex_stage_regs_mem_op; // @[RISCV_core.scala 168:32]
  reg  idex_stage_regs_jump; // @[RISCV_core.scala 168:32]
  reg  idex_stage_regs_branch; // @[RISCV_core.scala 168:32]
  reg  idex_stage_regs_alu_op1_src; // @[RISCV_core.scala 168:32]
  reg  idex_stage_regs_alu_op2_src; // @[RISCV_core.scala 168:32]
  reg [3:0] idex_stage_regs_alu_op; // @[RISCV_core.scala 168:32]
  reg [2:0] idex_stage_regs_comp_op; // @[RISCV_core.scala 168:32]
  reg  idex_stage_regs_csr_write; // @[RISCV_core.scala 168:32]
  reg [31:0] idex_stage_regs_csr_write_addr; // @[RISCV_core.scala 168:32]
  reg [31:0] idex_stage_regs_csr_rdata; // @[RISCV_core.scala 168:32]
  reg [31:0] exmm_stage_regs_instr_next_addr; // @[RISCV_core.scala 186:32]
  reg [31:0] exmm_stage_regs_alu_result; // @[RISCV_core.scala 186:32]
  reg [31:0] exmm_stage_regs_rs2_data; // @[RISCV_core.scala 186:32]
  reg  exmm_stage_regs_mem_write; // @[RISCV_core.scala 186:32]
  reg [3:0] exmm_stage_regs_mem_op; // @[RISCV_core.scala 186:32]
  reg  exmm_stage_regs_reg_write; // @[RISCV_core.scala 186:32]
  reg [1:0] exmm_stage_regs_reg_write_src; // @[RISCV_core.scala 186:32]
  reg [4:0] exmm_stage_regs_reg_write_addr; // @[RISCV_core.scala 186:32]
  reg  exmm_stage_regs_csr_write; // @[RISCV_core.scala 186:32]
  reg [31:0] exmm_stage_regs_csr_write_addr; // @[RISCV_core.scala 186:32]
  reg [31:0] exmm_stage_regs_csr_write_data; // @[RISCV_core.scala 186:32]
  reg [31:0] exmm_stage_regs_csr_rdata; // @[RISCV_core.scala 186:32]
  reg [31:0] mmwb_stage_regs_instr_next_addr; // @[RISCV_core.scala 202:32]
  reg [31:0] mmwb_stage_regs_alu_result; // @[RISCV_core.scala 202:32]
  reg [31:0] mmwb_stage_regs_mem_result; // @[RISCV_core.scala 202:32]
  reg  mmwb_stage_regs_reg_write; // @[RISCV_core.scala 202:32]
  reg [1:0] mmwb_stage_regs_reg_write_src; // @[RISCV_core.scala 202:32]
  reg [4:0] mmwb_stage_regs_reg_write_addr; // @[RISCV_core.scala 202:32]
  reg  mmwb_stage_regs_csr_write; // @[RISCV_core.scala 202:32]
  reg [31:0] mmwb_stage_regs_csr_write_addr; // @[RISCV_core.scala 202:32]
  reg [31:0] mmwb_stage_regs_csr_write_data; // @[RISCV_core.scala 202:32]
  reg [31:0] mmwb_stage_regs_csr_rdata; // @[RISCV_core.scala 202:32]
  wire  _T_1 = idex_stage_regs_branch & comp_io_result_o; // @[RISCV_core.scala 206:59]
  wire [31:0] _pc_next_pc_T_1 = alu_io_result_o + 32'h4; // @[RISCV_core.scala 208:37]
  wire [31:0] _pc_next_pc_T_3 = clint_io_instr_addr_o + 32'h4; // @[RISCV_core.scala 211:43]
  wire [31:0] _pc_next_pc_T_5 = pc_next_pc + 32'h4; // @[RISCV_core.scala 214:32]
  wire  _data_stall_T_3 = decoder_io_rs2_addr_o == idex_stage_regs_reg_write_addr; // @[RISCV_core.scala 300:41]
  wire  _data_stall_T_4 = decoder_io_rs1_addr_o == idex_stage_regs_reg_write_addr | _data_stall_T_3; // @[RISCV_core.scala 299:78]
  wire  _data_stall_T_5 = 5'h0 == idex_stage_regs_reg_write_addr; // @[RISCV_core.scala 301:41]
  wire  _data_stall_T_6 = _data_stall_T_4 | _data_stall_T_5; // @[RISCV_core.scala 300:77]
  wire  _data_stall_T_7 = idex_stage_regs_reg_write & idex_stage_regs_reg_write_addr != 5'h0 & _data_stall_T_6; // @[RISCV_core.scala 298:86]
  wire  _data_stall_T_11 = decoder_io_rs2_addr_o == exmm_stage_regs_reg_write_addr; // @[RISCV_core.scala 304:41]
  wire  _data_stall_T_12 = decoder_io_rs1_addr_o == exmm_stage_regs_reg_write_addr | _data_stall_T_11; // @[RISCV_core.scala 303:78]
  wire  _data_stall_T_13 = 5'h0 == exmm_stage_regs_reg_write_addr; // @[RISCV_core.scala 305:41]
  wire  _data_stall_T_14 = _data_stall_T_12 | _data_stall_T_13; // @[RISCV_core.scala 304:77]
  wire  _data_stall_T_15 = exmm_stage_regs_reg_write & exmm_stage_regs_reg_write_addr != 5'h0 & _data_stall_T_14; // @[RISCV_core.scala 302:86]
  wire  _data_stall_T_16 = _data_stall_T_7 | _data_stall_T_15; // @[RISCV_core.scala 301:79]
  wire  _data_stall_T_20 = decoder_io_rs2_addr_o == mmwb_stage_regs_reg_write_addr; // @[RISCV_core.scala 308:41]
  wire  _data_stall_T_21 = decoder_io_rs1_addr_o == mmwb_stage_regs_reg_write_addr | _data_stall_T_20; // @[RISCV_core.scala 307:78]
  wire  _data_stall_T_22 = 5'h0 == mmwb_stage_regs_reg_write_addr; // @[RISCV_core.scala 309:41]
  wire  _data_stall_T_23 = _data_stall_T_21 | _data_stall_T_22; // @[RISCV_core.scala 308:77]
  wire  _data_stall_T_24 = mmwb_stage_regs_reg_write & mmwb_stage_regs_reg_write_addr != 5'h0 & _data_stall_T_23; // @[RISCV_core.scala 306:86]
  wire  _data_stall_T_25 = _data_stall_T_16 | _data_stall_T_24; // @[RISCV_core.scala 305:79]
  wire  _data_stall_T_28 = decoder_io_csr_raddr_o == idex_stage_regs_csr_write_addr; // @[RISCV_core.scala 311:42]
  wire  _data_stall_T_29 = idex_stage_regs_csr_write & idex_stage_regs_csr_write_addr != 32'h0 & _data_stall_T_28; // @[RISCV_core.scala 310:89]
  wire  _data_stall_T_30 = _data_stall_T_25 | _data_stall_T_29; // @[RISCV_core.scala 309:79]
  wire  _data_stall_T_33 = decoder_io_csr_raddr_o == exmm_stage_regs_csr_write_addr; // @[RISCV_core.scala 313:42]
  wire  _data_stall_T_34 = exmm_stage_regs_csr_write & exmm_stage_regs_csr_write_addr != 32'h0 & _data_stall_T_33; // @[RISCV_core.scala 312:89]
  wire  _data_stall_T_35 = _data_stall_T_30 | _data_stall_T_34; // @[RISCV_core.scala 311:79]
  wire  _data_stall_T_38 = decoder_io_csr_raddr_o == mmwb_stage_regs_csr_write_addr; // @[RISCV_core.scala 315:42]
  wire  _data_stall_T_39 = mmwb_stage_regs_csr_write & mmwb_stage_regs_csr_write_addr != 32'h0 & _data_stall_T_38; // @[RISCV_core.scala 314:89]
  wire  _T_11 = 3'h1 == idex_stage_regs_instr_data[14:12]; // @[Conditional.scala 37:30]
  wire  _T_12 = 3'h2 == idex_stage_regs_instr_data[14:12]; // @[Conditional.scala 37:30]
  wire [31:0] _exmm_stage_regs_csr_write_data_T = idex_stage_regs_rs1_data | idex_stage_regs_csr_rdata; // @[RISCV_core.scala 349:70]
  wire  _T_13 = 3'h3 == idex_stage_regs_instr_data[14:12]; // @[Conditional.scala 37:30]
  wire [31:0] _exmm_stage_regs_csr_write_data_T_1 = ~idex_stage_regs_rs1_data; // @[RISCV_core.scala 352:74]
  wire [31:0] _exmm_stage_regs_csr_write_data_T_2 = idex_stage_regs_csr_rdata & _exmm_stage_regs_csr_write_data_T_1; // @[RISCV_core.scala 352:71]
  wire  _T_14 = 3'h5 == idex_stage_regs_instr_data[14:12]; // @[Conditional.scala 37:30]
  wire [58:0] _exmm_stage_regs_csr_write_data_T_3 = {27'h0,idex_stage_regs_imm}; // @[Cat.scala 30:58]
  wire  _T_15 = 3'h6 == idex_stage_regs_instr_data[14:12]; // @[Conditional.scala 37:30]
  wire [58:0] _GEN_156 = {{27'd0}, idex_stage_regs_csr_rdata}; // @[RISCV_core.scala 358:85]
  wire [58:0] _exmm_stage_regs_csr_write_data_T_5 = _exmm_stage_regs_csr_write_data_T_3 | _GEN_156; // @[RISCV_core.scala 358:85]
  wire  _T_16 = 3'h7 == idex_stage_regs_instr_data[14:12]; // @[Conditional.scala 37:30]
  wire [58:0] _exmm_stage_regs_csr_write_data_T_7 = ~_exmm_stage_regs_csr_write_data_T_3; // @[RISCV_core.scala 361:46]
  wire [58:0] _exmm_stage_regs_csr_write_data_T_8 = _exmm_stage_regs_csr_write_data_T_7 & _GEN_156; // @[RISCV_core.scala 361:97]
  wire [58:0] _GEN_64 = _T_16 ? _exmm_stage_regs_csr_write_data_T_8 : {{27'd0}, exmm_stage_regs_csr_write_data}; // @[Conditional.scala 39:67 RISCV_core.scala 361:42 RISCV_core.scala 186:32]
  wire [58:0] _GEN_65 = _T_15 ? _exmm_stage_regs_csr_write_data_T_5 : _GEN_64; // @[Conditional.scala 39:67 RISCV_core.scala 358:42]
  wire [58:0] _GEN_66 = _T_14 ? _exmm_stage_regs_csr_write_data_T_3 : _GEN_65; // @[Conditional.scala 39:67 RISCV_core.scala 355:42]
  wire [58:0] _GEN_67 = _T_13 ? {{27'd0}, _exmm_stage_regs_csr_write_data_T_2} : _GEN_66; // @[Conditional.scala 39:67 RISCV_core.scala 352:42]
  wire [58:0] _GEN_68 = _T_12 ? {{27'd0}, _exmm_stage_regs_csr_write_data_T} : _GEN_67; // @[Conditional.scala 39:67 RISCV_core.scala 349:42]
  wire [58:0] _GEN_69 = _T_11 ? {{27'd0}, idex_stage_regs_rs1_data} : _GEN_68; // @[Conditional.scala 40:58 RISCV_core.scala 346:42]
  wire [58:0] _GEN_70 = idex_stage_regs_instr_data[6:0] == 7'h73 ? _GEN_69 : 59'h0; // @[RISCV_core.scala 343:62 RISCV_core.scala 365:38]
  wire [58:0] _GEN_84 = pipeline_control_io_exmm_we_o ? _GEN_70 : {{27'd0}, exmm_stage_regs_csr_write_data}; // @[RISCV_core.scala 327:47 RISCV_core.scala 368:21]
  wire [58:0] _GEN_86 = pipeline_control_io_exmm_clear_o ? 59'h0 : _GEN_84; // @[RISCV_core.scala 325:43 RISCV_core.scala 326:21]
  wire  _T_19 = 4'h6 == exmm_stage_regs_mem_op; // @[Conditional.scala 37:30]
  wire [29:0] io_data_addr_o_hi = exmm_stage_regs_alu_result[31:2]; // @[RISCV_core.scala 379:57]
  wire [31:0] _io_data_addr_o_T = {io_data_addr_o_hi,2'h0}; // @[Cat.scala 30:58]
  wire [6:0] _io_data_be_o_T_1 = 7'h1 << exmm_stage_regs_alu_result[1:0]; // @[RISCV_core.scala 380:34]
  wire  _T_22 = 4'h7 == exmm_stage_regs_mem_op; // @[Conditional.scala 37:30]
  wire [3:0] _GEN_99 = exmm_stage_regs_alu_result[1] ? 4'hc : 4'h3; // @[RISCV_core.scala 384:46 RISCV_core.scala 385:24 RISCV_core.scala 387:24]
  wire  _T_26 = 4'h8 == exmm_stage_regs_mem_op; // @[Conditional.scala 37:30]
  wire [31:0] _GEN_100 = _T_26 ? _io_data_addr_o_T : 32'h0; // @[Conditional.scala 39:67 RISCV_core.scala 391:24 RISCV_core.scala 375:20]
  wire [3:0] _GEN_101 = _T_26 ? 4'hf : 4'h0; // @[Conditional.scala 39:67 RISCV_core.scala 392:22 RISCV_core.scala 376:18]
  wire [31:0] _GEN_102 = _T_22 ? _io_data_addr_o_T : _GEN_100; // @[Conditional.scala 39:67 RISCV_core.scala 383:24]
  wire [3:0] _GEN_103 = _T_22 ? _GEN_99 : _GEN_101; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_104 = _T_19 ? _io_data_addr_o_T : _GEN_102; // @[Conditional.scala 40:58 RISCV_core.scala 379:24]
  wire [6:0] _GEN_105 = _T_19 ? _io_data_be_o_T_1 : {{3'd0}, _GEN_103}; // @[Conditional.scala 40:58 RISCV_core.scala 380:22]
  wire  _T_29 = 4'h1 == exmm_stage_regs_mem_op; // @[Conditional.scala 37:30]
  wire  _T_32 = 4'h4 == exmm_stage_regs_mem_op; // @[Conditional.scala 37:30]
  wire  _T_35 = 4'h2 == exmm_stage_regs_mem_op; // @[Conditional.scala 37:30]
  wire  _T_39 = 4'h5 == exmm_stage_regs_mem_op; // @[Conditional.scala 37:30]
  wire  _T_43 = 4'h3 == exmm_stage_regs_mem_op; // @[Conditional.scala 37:30]
  wire [31:0] _GEN_108 = _T_43 ? _io_data_addr_o_T : 32'h0; // @[Conditional.scala 39:67 RISCV_core.scala 426:24 RISCV_core.scala 399:20]
  wire [3:0] _GEN_109 = _T_43 ? 4'hf : 4'h0; // @[Conditional.scala 39:67 RISCV_core.scala 427:22 RISCV_core.scala 398:18]
  wire [31:0] _GEN_110 = _T_39 ? _io_data_addr_o_T : _GEN_108; // @[Conditional.scala 39:67 RISCV_core.scala 418:24]
  wire [3:0] _GEN_111 = _T_39 ? _GEN_99 : _GEN_109; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_112 = _T_35 ? _io_data_addr_o_T : _GEN_110; // @[Conditional.scala 39:67 RISCV_core.scala 410:24]
  wire [3:0] _GEN_113 = _T_35 ? _GEN_99 : _GEN_111; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_114 = _T_32 ? _io_data_addr_o_T : _GEN_112; // @[Conditional.scala 39:67 RISCV_core.scala 406:24]
  wire [6:0] _GEN_115 = _T_32 ? _io_data_be_o_T_1 : {{3'd0}, _GEN_113}; // @[Conditional.scala 39:67 RISCV_core.scala 407:22]
  wire [31:0] _GEN_116 = _T_29 ? _io_data_addr_o_T : _GEN_114; // @[Conditional.scala 40:58 RISCV_core.scala 402:24]
  wire [6:0] _GEN_117 = _T_29 ? _io_data_be_o_T_1 : _GEN_115; // @[Conditional.scala 40:58 RISCV_core.scala 403:22]
  wire [6:0] _GEN_121 = exmm_stage_regs_mem_write ? _GEN_105 : _GEN_117; // @[RISCV_core.scala 372:36]
  wire [23:0] mmwb_stage_regs_mem_result_hi = io_data_rdata_i[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [7:0] mmwb_stage_regs_mem_result_lo = io_data_rdata_i[7:0]; // @[RISCV_core.scala 444:88]
  wire [31:0] _mmwb_stage_regs_mem_result_T_2 = {mmwb_stage_regs_mem_result_hi,mmwb_stage_regs_mem_result_lo}; // @[Cat.scala 30:58]
  wire [31:0] _mmwb_stage_regs_mem_result_T_3 = {24'h0,mmwb_stage_regs_mem_result_lo}; // @[Cat.scala 30:58]
  wire [15:0] mmwb_stage_regs_mem_result_hi_1 = io_data_rdata_i[15] ? 16'hffff : 16'h0; // @[Bitwise.scala 72:12]
  wire [15:0] mmwb_stage_regs_mem_result_lo_2 = io_data_rdata_i[15:0]; // @[RISCV_core.scala 450:89]
  wire [31:0] _mmwb_stage_regs_mem_result_T_6 = {mmwb_stage_regs_mem_result_hi_1,mmwb_stage_regs_mem_result_lo_2}; // @[Cat.scala 30:58]
  wire [31:0] _mmwb_stage_regs_mem_result_T_7 = {16'h0,mmwb_stage_regs_mem_result_lo_2}; // @[Cat.scala 30:58]
  wire [31:0] _GEN_122 = _T_43 ? io_data_rdata_i : 32'h0; // @[Conditional.scala 39:67 RISCV_core.scala 456:36 RISCV_core.scala 441:32]
  wire [31:0] _GEN_123 = _T_39 ? _mmwb_stage_regs_mem_result_T_7 : _GEN_122; // @[Conditional.scala 39:67 RISCV_core.scala 453:36]
  wire [31:0] _GEN_124 = _T_35 ? _mmwb_stage_regs_mem_result_T_6 : _GEN_123; // @[Conditional.scala 39:67 RISCV_core.scala 450:36]
  wire [31:0] _GEN_125 = _T_32 ? _mmwb_stage_regs_mem_result_T_3 : _GEN_124; // @[Conditional.scala 39:67 RISCV_core.scala 447:36]
  wire  _T_61 = 2'h0 == mmwb_stage_regs_reg_write_src; // @[Conditional.scala 37:30]
  wire  _T_64 = 2'h1 == mmwb_stage_regs_reg_write_src; // @[Conditional.scala 37:30]
  wire  _T_67 = 2'h2 == mmwb_stage_regs_reg_write_src; // @[Conditional.scala 37:30]
  wire  _T_70 = 2'h3 == mmwb_stage_regs_reg_write_src; // @[Conditional.scala 37:30]
  wire [31:0] _GEN_151 = _T_70 ? mmwb_stage_regs_csr_rdata : mmwb_stage_regs_instr_next_addr; // @[Conditional.scala 39:67 RISCV_core.scala 486:34 RISCV_core.scala 473:28]
  wire [31:0] _GEN_152 = _T_67 ? mmwb_stage_regs_instr_next_addr : _GEN_151; // @[Conditional.scala 39:67 RISCV_core.scala 483:34]
  wire [31:0] _GEN_153 = _T_64 ? mmwb_stage_regs_alu_result : _GEN_152; // @[Conditional.scala 39:67 RISCV_core.scala 480:34]
  wire [31:0] _GEN_154 = _T_61 ? mmwb_stage_regs_mem_result : _GEN_153; // @[Conditional.scala 40:58 RISCV_core.scala 477:34]
  RISCV_decoder decoder ( // @[RISCV_core.scala 112:23]
    .io_instr_data_i(decoder_io_instr_data_i),
    .io_instr_type_o(decoder_io_instr_type_o),
    .io_rs1_addr_o(decoder_io_rs1_addr_o),
    .io_rs2_addr_o(decoder_io_rs2_addr_o),
    .io_rd_addr_o(decoder_io_rd_addr_o),
    .io_imm_o(decoder_io_imm_o),
    .io_csr_raddr_o(decoder_io_csr_raddr_o),
    .io_csr_waddr_o(decoder_io_csr_waddr_o)
  );
  RISCV_register_file regfile ( // @[RISCV_core.scala 114:23]
    .clock(regfile_clock),
    .io_reg_raddr_a_i(regfile_io_reg_raddr_a_i),
    .io_reg_rdata_a_o(regfile_io_reg_rdata_a_o),
    .io_reg_raddr_b_i(regfile_io_reg_raddr_b_i),
    .io_reg_rdata_b_o(regfile_io_reg_rdata_b_o),
    .io_reg_waddr_a_i(regfile_io_reg_waddr_a_i),
    .io_reg_wdata_a_i(regfile_io_reg_wdata_a_i),
    .io_reg_we_a_i(regfile_io_reg_we_a_i)
  );
  RISCV_csr_register csr_regfile ( // @[RISCV_core.scala 116:27]
    .clock(csr_regfile_clock),
    .reset(csr_regfile_reset),
    .io_csr_we_i(csr_regfile_io_csr_we_i),
    .io_csr_waddr_i(csr_regfile_io_csr_waddr_i),
    .io_csr_wdata_i(csr_regfile_io_csr_wdata_i),
    .io_csr_raddr_i(csr_regfile_io_csr_raddr_i),
    .io_csr_rdata_o(csr_regfile_io_csr_rdata_o),
    .io_clint_csr_we_i(csr_regfile_io_clint_csr_we_i),
    .io_clint_csr_waddr_i(csr_regfile_io_clint_csr_waddr_i),
    .io_clint_csr_wdata_i(csr_regfile_io_clint_csr_wdata_i),
    .io_clint_csr_mtvec_o(csr_regfile_io_clint_csr_mtvec_o),
    .io_clint_csr_mepc_o(csr_regfile_io_clint_csr_mepc_o),
    .io_clint_scr_mstatus_o(csr_regfile_io_clint_scr_mstatus_o)
  );
  RISCV_ex_control ex_control ( // @[RISCV_core.scala 118:26]
    .io_instr_type_i(ex_control_io_instr_type_i),
    .io_jump_o(ex_control_io_jump_o),
    .io_branch_o(ex_control_io_branch_o),
    .io_alu_op1_src_o(ex_control_io_alu_op1_src_o),
    .io_alu_op2_src_o(ex_control_io_alu_op2_src_o),
    .io_alu_op_o(ex_control_io_alu_op_o),
    .io_comp_op_o(ex_control_io_comp_op_o),
    .io_mem_wirte_o(ex_control_io_mem_wirte_o),
    .io_mem_op_o(ex_control_io_mem_op_o),
    .io_reg_write_o(ex_control_io_reg_write_o),
    .io_reg_write_src_o(ex_control_io_reg_write_src_o),
    .io_csr_write_o(ex_control_io_csr_write_o)
  );
  RISCV_comp comp ( // @[RISCV_core.scala 120:20]
    .io_comp_op_i(comp_io_comp_op_i),
    .io_op_a_i(comp_io_op_a_i),
    .io_op_b_i(comp_io_op_b_i),
    .io_result_o(comp_io_result_o)
  );
  RISCV_alu alu ( // @[RISCV_core.scala 122:19]
    .io_op_a_i(alu_io_op_a_i),
    .io_op_b_i(alu_io_op_b_i),
    .io_operation_i(alu_io_operation_i),
    .io_result_o(alu_io_result_o)
  );
  RISCV_pipeline_control pipeline_control ( // @[RISCV_core.scala 124:32]
    .io_data_stall_i(pipeline_control_io_data_stall_i),
    .io_control_stall_i(pipeline_control_io_control_stall_i),
    .io_int_stall_i(pipeline_control_io_int_stall_i),
    .io_csr_state_i(pipeline_control_io_csr_state_i),
    .io_pc_we_o(pipeline_control_io_pc_we_o),
    .io_ifid_clear_o(pipeline_control_io_ifid_clear_o),
    .io_ifid_we_o(pipeline_control_io_ifid_we_o),
    .io_idex_clear_o(pipeline_control_io_idex_clear_o),
    .io_idex_we_o(pipeline_control_io_idex_we_o),
    .io_exmm_clear_o(pipeline_control_io_exmm_clear_o),
    .io_exmm_we_o(pipeline_control_io_exmm_we_o),
    .io_mmwb_clear_o(pipeline_control_io_mmwb_clear_o),
    .io_mmwb_we_o(pipeline_control_io_mmwb_we_o)
  );
  RISCV_clint clint ( // @[RISCV_core.scala 126:21]
    .clock(clint_clock),
    .reset(clint_reset),
    .io_int_flag_i(clint_io_int_flag_i),
    .io_idex_instr_data_i(clint_io_idex_instr_data_i),
    .io_idex_instr_addr_i(clint_io_idex_instr_addr_i),
    .io_ifid_instr_addr_i(clint_io_ifid_instr_addr_i),
    .io_csr_mtvec_i(clint_io_csr_mtvec_i),
    .io_csr_mepc_i(clint_io_csr_mepc_i),
    .io_csr_mstatus_i(clint_io_csr_mstatus_i),
    .io_instr_addr_o(clint_io_instr_addr_o),
    .io_int_stall_o(clint_io_int_stall_o),
    .io_csr_state_o(clint_io_csr_state_o),
    .io_csr_write_o(clint_io_csr_write_o),
    .io_csr_waddr_o(clint_io_csr_waddr_o),
    .io_csr_wdata_o(clint_io_csr_wdata_o)
  );
  assign io_instr_addr_o = pc_current_pc; // @[RISCV_core.scala 219:19]
  assign io_data_we_o = exmm_stage_regs_mem_write; // @[RISCV_core.scala 372:36 RISCV_core.scala 373:18 RISCV_core.scala 396:18]
  assign io_data_be_o = _GEN_121[3:0];
  assign io_data_addr_o = exmm_stage_regs_mem_write ? _GEN_104 : _GEN_116; // @[RISCV_core.scala 372:36]
  assign io_data_wdata_o = exmm_stage_regs_mem_write ? exmm_stage_regs_rs2_data : 32'h0; // @[RISCV_core.scala 372:36 RISCV_core.scala 374:21 RISCV_core.scala 397:21]
  assign decoder_io_instr_data_i = ifid_stage_regs_instr_data; // @[RISCV_core.scala 233:27]
  assign regfile_clock = clock;
  assign regfile_io_reg_raddr_a_i = decoder_io_rs1_addr_o; // @[RISCV_core.scala 235:28]
  assign regfile_io_reg_raddr_b_i = decoder_io_rs2_addr_o; // @[RISCV_core.scala 236:28]
  assign regfile_io_reg_waddr_a_i = mmwb_stage_regs_reg_write_addr; // @[RISCV_core.scala 472:28]
  assign regfile_io_reg_wdata_a_i = mmwb_stage_regs_reg_write ? _GEN_154 : mmwb_stage_regs_instr_next_addr; // @[RISCV_core.scala 474:36 RISCV_core.scala 473:28]
  assign regfile_io_reg_we_a_i = mmwb_stage_regs_reg_write; // @[RISCV_core.scala 471:25]
  assign csr_regfile_clock = clock;
  assign csr_regfile_reset = reset;
  assign csr_regfile_io_csr_we_i = mmwb_stage_regs_csr_write; // @[RISCV_core.scala 490:27]
  assign csr_regfile_io_csr_waddr_i = mmwb_stage_regs_csr_write_addr; // @[RISCV_core.scala 491:30]
  assign csr_regfile_io_csr_wdata_i = mmwb_stage_regs_csr_write_data; // @[RISCV_core.scala 492:30]
  assign csr_regfile_io_csr_raddr_i = decoder_io_csr_raddr_o; // @[RISCV_core.scala 238:30]
  assign csr_regfile_io_clint_csr_we_i = clint_io_csr_write_o; // @[RISCV_core.scala 493:33]
  assign csr_regfile_io_clint_csr_waddr_i = clint_io_csr_waddr_o; // @[RISCV_core.scala 494:36]
  assign csr_regfile_io_clint_csr_wdata_i = clint_io_csr_wdata_o; // @[RISCV_core.scala 495:36]
  assign ex_control_io_instr_type_i = decoder_io_instr_type_o; // @[RISCV_core.scala 234:30]
  assign comp_io_comp_op_i = idex_stage_regs_comp_op; // @[RISCV_core.scala 276:21]
  assign comp_io_op_a_i = idex_stage_regs_rs1_data; // @[RISCV_core.scala 274:18]
  assign comp_io_op_b_i = idex_stage_regs_rs2_data; // @[RISCV_core.scala 275:18]
  assign alu_io_op_a_i = idex_stage_regs_alu_op1_src ? idex_stage_regs_instr_addr : idex_stage_regs_rs1_data; // @[RISCV_core.scala 277:59 RISCV_core.scala 278:19 RISCV_core.scala 280:19]
  assign alu_io_op_b_i = idex_stage_regs_alu_op2_src ? idex_stage_regs_imm : idex_stage_regs_rs2_data; // @[RISCV_core.scala 282:60 RISCV_core.scala 283:19 RISCV_core.scala 285:19]
  assign alu_io_operation_i = idex_stage_regs_alu_op; // @[RISCV_core.scala 287:22]
  assign pipeline_control_io_data_stall_i = _data_stall_T_35 | _data_stall_T_39; // @[RISCV_core.scala 313:79]
  assign pipeline_control_io_control_stall_i = idex_stage_regs_jump | _T_1; // @[RISCV_core.scala 318:41]
  assign pipeline_control_io_int_stall_i = clint_io_int_stall_o; // @[RISCV_core.scala 321:35]
  assign pipeline_control_io_csr_state_i = clint_io_csr_state_o; // @[RISCV_core.scala 322:35]
  assign clint_clock = clock;
  assign clint_reset = reset;
  assign clint_io_int_flag_i = io_int_flag_i; // @[RISCV_core.scala 289:23]
  assign clint_io_idex_instr_data_i = idex_stage_regs_instr_data; // @[RISCV_core.scala 290:30]
  assign clint_io_idex_instr_addr_i = idex_stage_regs_instr_addr; // @[RISCV_core.scala 291:30]
  assign clint_io_ifid_instr_addr_i = ifid_stage_regs_instr_addr; // @[RISCV_core.scala 292:30]
  assign clint_io_csr_mtvec_i = csr_regfile_io_clint_csr_mtvec_o; // @[RISCV_core.scala 293:24]
  assign clint_io_csr_mepc_i = csr_regfile_io_clint_csr_mepc_o; // @[RISCV_core.scala 294:23]
  assign clint_io_csr_mstatus_i = csr_regfile_io_clint_scr_mstatus_o; // @[RISCV_core.scala 295:26]
  always @(posedge clock) begin
    if (reset) begin // @[RISCV_core.scala 132:19]
      pc_current_pc <= io_boot_addr_i; // @[RISCV_core.scala 132:19]
    end else if (pipeline_control_io_pc_we_o) begin // @[RISCV_core.scala 205:38]
      if (idex_stage_regs_jump | idex_stage_regs_branch & comp_io_result_o) begin // @[RISCV_core.scala 206:90]
        pc_current_pc <= alu_io_result_o; // @[RISCV_core.scala 207:21]
      end else if (clint_io_csr_state_o == 7'h40 | clint_io_csr_state_o == 7'h20) begin // @[RISCV_core.scala 209:108]
        pc_current_pc <= clint_io_instr_addr_o; // @[RISCV_core.scala 210:21]
      end else begin
        pc_current_pc <= pc_next_pc; // @[RISCV_core.scala 213:21]
      end
    end
    if (reset) begin // @[RISCV_core.scala 132:19]
      pc_next_pc <= pc_reset_next_pc; // @[RISCV_core.scala 132:19]
    end else if (pipeline_control_io_pc_we_o) begin // @[RISCV_core.scala 205:38]
      if (idex_stage_regs_jump | idex_stage_regs_branch & comp_io_result_o) begin // @[RISCV_core.scala 206:90]
        pc_next_pc <= _pc_next_pc_T_1; // @[RISCV_core.scala 208:18]
      end else if (clint_io_csr_state_o == 7'h40 | clint_io_csr_state_o == 7'h20) begin // @[RISCV_core.scala 209:108]
        pc_next_pc <= _pc_next_pc_T_3; // @[RISCV_core.scala 211:18]
      end else begin
        pc_next_pc <= _pc_next_pc_T_5; // @[RISCV_core.scala 214:18]
      end
    end
    if (reset) begin // @[RISCV_core.scala 139:32]
      ifid_stage_regs_instr_addr <= 32'h0; // @[RISCV_core.scala 139:32]
    end else if (pipeline_control_io_ifid_clear_o) begin // @[RISCV_core.scala 222:43]
      ifid_stage_regs_instr_addr <= 32'h0; // @[RISCV_core.scala 223:21]
    end else if (pipeline_control_io_ifid_we_o) begin // @[RISCV_core.scala 224:47]
      ifid_stage_regs_instr_addr <= pc_current_pc; // @[RISCV_core.scala 225:32]
    end
    if (reset) begin // @[RISCV_core.scala 139:32]
      ifid_stage_regs_instr_data <= 32'h0; // @[RISCV_core.scala 139:32]
    end else if (pipeline_control_io_ifid_clear_o) begin // @[RISCV_core.scala 222:43]
      ifid_stage_regs_instr_data <= 32'h0; // @[RISCV_core.scala 223:21]
    end else if (pipeline_control_io_ifid_we_o) begin // @[RISCV_core.scala 224:47]
      ifid_stage_regs_instr_data <= io_instr_data_i; // @[RISCV_core.scala 226:32]
    end
    if (reset) begin // @[RISCV_core.scala 139:32]
      ifid_stage_regs_instr_next_addr <= 32'h0; // @[RISCV_core.scala 139:32]
    end else if (pipeline_control_io_ifid_clear_o) begin // @[RISCV_core.scala 222:43]
      ifid_stage_regs_instr_next_addr <= 32'h0; // @[RISCV_core.scala 223:21]
    end else if (pipeline_control_io_ifid_we_o) begin // @[RISCV_core.scala 224:47]
      ifid_stage_regs_instr_next_addr <= pc_next_pc; // @[RISCV_core.scala 227:37]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_instr_addr <= 32'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_instr_addr <= 32'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_instr_addr <= ifid_stage_regs_instr_addr; // @[RISCV_core.scala 244:32]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_instr_data <= 32'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_instr_data <= 32'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_instr_data <= ifid_stage_regs_instr_data; // @[RISCV_core.scala 245:32]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_instr_next_addr <= 32'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_instr_next_addr <= 32'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_instr_next_addr <= ifid_stage_regs_instr_next_addr; // @[RISCV_core.scala 246:37]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_rs1_data <= 32'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_rs1_data <= 32'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_rs1_data <= regfile_io_reg_rdata_a_o; // @[RISCV_core.scala 250:30]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_rs2_data <= 32'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_rs2_data <= 32'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_rs2_data <= regfile_io_reg_rdata_b_o; // @[RISCV_core.scala 251:30]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_imm <= 32'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_imm <= 32'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_imm <= decoder_io_imm_o; // @[RISCV_core.scala 253:25]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_reg_write <= 1'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_reg_write <= 1'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_reg_write <= ex_control_io_reg_write_o; // @[RISCV_core.scala 254:31]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_reg_write_src <= 2'h1; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_reg_write_src <= 2'h1; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_reg_write_src <= ex_control_io_reg_write_src_o; // @[RISCV_core.scala 255:35]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_reg_write_addr <= 5'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_reg_write_addr <= 5'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_reg_write_addr <= decoder_io_rd_addr_o; // @[RISCV_core.scala 256:36]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_mem_write <= 1'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_mem_write <= 1'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_mem_write <= ex_control_io_mem_wirte_o; // @[RISCV_core.scala 257:31]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_mem_op <= 4'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_mem_op <= 4'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_mem_op <= ex_control_io_mem_op_o; // @[RISCV_core.scala 258:28]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_jump <= 1'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_jump <= 1'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_jump <= ex_control_io_jump_o; // @[RISCV_core.scala 259:26]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_branch <= 1'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_branch <= 1'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_branch <= ex_control_io_branch_o; // @[RISCV_core.scala 260:28]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_alu_op1_src <= 1'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_alu_op1_src <= 1'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_alu_op1_src <= ex_control_io_alu_op1_src_o; // @[RISCV_core.scala 262:33]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_alu_op2_src <= 1'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_alu_op2_src <= 1'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_alu_op2_src <= ex_control_io_alu_op2_src_o; // @[RISCV_core.scala 263:33]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_alu_op <= 4'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_alu_op <= 4'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_alu_op <= ex_control_io_alu_op_o; // @[RISCV_core.scala 261:28]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_comp_op <= 3'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_comp_op <= 3'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_comp_op <= ex_control_io_comp_op_o; // @[RISCV_core.scala 264:29]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_csr_write <= 1'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_csr_write <= 1'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_csr_write <= ex_control_io_csr_write_o; // @[RISCV_core.scala 265:31]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_csr_write_addr <= 32'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_csr_write_addr <= 32'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_csr_write_addr <= decoder_io_csr_waddr_o; // @[RISCV_core.scala 266:36]
    end
    if (reset) begin // @[RISCV_core.scala 168:32]
      idex_stage_regs_csr_rdata <= 32'h0; // @[RISCV_core.scala 168:32]
    end else if (pipeline_control_io_idex_clear_o) begin // @[RISCV_core.scala 241:43]
      idex_stage_regs_csr_rdata <= 32'h0; // @[RISCV_core.scala 242:21]
    end else if (pipeline_control_io_idex_we_o) begin // @[RISCV_core.scala 243:47]
      idex_stage_regs_csr_rdata <= csr_regfile_io_csr_rdata_o; // @[RISCV_core.scala 268:31]
    end
    if (reset) begin // @[RISCV_core.scala 186:32]
      exmm_stage_regs_instr_next_addr <= 32'h0; // @[RISCV_core.scala 186:32]
    end else if (pipeline_control_io_exmm_clear_o) begin // @[RISCV_core.scala 325:43]
      exmm_stage_regs_instr_next_addr <= 32'h0; // @[RISCV_core.scala 326:21]
    end else if (pipeline_control_io_exmm_we_o) begin // @[RISCV_core.scala 327:47]
      exmm_stage_regs_instr_next_addr <= idex_stage_regs_instr_next_addr; // @[RISCV_core.scala 330:37]
    end
    if (reset) begin // @[RISCV_core.scala 186:32]
      exmm_stage_regs_alu_result <= 32'h0; // @[RISCV_core.scala 186:32]
    end else if (pipeline_control_io_exmm_clear_o) begin // @[RISCV_core.scala 325:43]
      exmm_stage_regs_alu_result <= 32'h0; // @[RISCV_core.scala 326:21]
    end else if (pipeline_control_io_exmm_we_o) begin // @[RISCV_core.scala 327:47]
      exmm_stage_regs_alu_result <= alu_io_result_o; // @[RISCV_core.scala 331:32]
    end
    if (reset) begin // @[RISCV_core.scala 186:32]
      exmm_stage_regs_rs2_data <= 32'h0; // @[RISCV_core.scala 186:32]
    end else if (pipeline_control_io_exmm_clear_o) begin // @[RISCV_core.scala 325:43]
      exmm_stage_regs_rs2_data <= 32'h0; // @[RISCV_core.scala 326:21]
    end else if (pipeline_control_io_exmm_we_o) begin // @[RISCV_core.scala 327:47]
      exmm_stage_regs_rs2_data <= idex_stage_regs_rs2_data; // @[RISCV_core.scala 332:30]
    end
    if (reset) begin // @[RISCV_core.scala 186:32]
      exmm_stage_regs_mem_write <= 1'h0; // @[RISCV_core.scala 186:32]
    end else if (pipeline_control_io_exmm_clear_o) begin // @[RISCV_core.scala 325:43]
      exmm_stage_regs_mem_write <= 1'h0; // @[RISCV_core.scala 326:21]
    end else if (pipeline_control_io_exmm_we_o) begin // @[RISCV_core.scala 327:47]
      exmm_stage_regs_mem_write <= idex_stage_regs_mem_write; // @[RISCV_core.scala 333:31]
    end
    if (reset) begin // @[RISCV_core.scala 186:32]
      exmm_stage_regs_mem_op <= 4'h0; // @[RISCV_core.scala 186:32]
    end else if (pipeline_control_io_exmm_clear_o) begin // @[RISCV_core.scala 325:43]
      exmm_stage_regs_mem_op <= 4'h0; // @[RISCV_core.scala 326:21]
    end else if (pipeline_control_io_exmm_we_o) begin // @[RISCV_core.scala 327:47]
      exmm_stage_regs_mem_op <= idex_stage_regs_mem_op; // @[RISCV_core.scala 334:28]
    end
    if (reset) begin // @[RISCV_core.scala 186:32]
      exmm_stage_regs_reg_write <= 1'h0; // @[RISCV_core.scala 186:32]
    end else if (pipeline_control_io_exmm_clear_o) begin // @[RISCV_core.scala 325:43]
      exmm_stage_regs_reg_write <= 1'h0; // @[RISCV_core.scala 326:21]
    end else if (pipeline_control_io_exmm_we_o) begin // @[RISCV_core.scala 327:47]
      exmm_stage_regs_reg_write <= idex_stage_regs_reg_write; // @[RISCV_core.scala 335:31]
    end
    if (reset) begin // @[RISCV_core.scala 186:32]
      exmm_stage_regs_reg_write_src <= 2'h1; // @[RISCV_core.scala 186:32]
    end else if (pipeline_control_io_exmm_clear_o) begin // @[RISCV_core.scala 325:43]
      exmm_stage_regs_reg_write_src <= 2'h1; // @[RISCV_core.scala 326:21]
    end else if (pipeline_control_io_exmm_we_o) begin // @[RISCV_core.scala 327:47]
      exmm_stage_regs_reg_write_src <= idex_stage_regs_reg_write_src; // @[RISCV_core.scala 336:35]
    end
    if (reset) begin // @[RISCV_core.scala 186:32]
      exmm_stage_regs_reg_write_addr <= 5'h0; // @[RISCV_core.scala 186:32]
    end else if (pipeline_control_io_exmm_clear_o) begin // @[RISCV_core.scala 325:43]
      exmm_stage_regs_reg_write_addr <= 5'h0; // @[RISCV_core.scala 326:21]
    end else if (pipeline_control_io_exmm_we_o) begin // @[RISCV_core.scala 327:47]
      exmm_stage_regs_reg_write_addr <= idex_stage_regs_reg_write_addr; // @[RISCV_core.scala 337:36]
    end
    if (reset) begin // @[RISCV_core.scala 186:32]
      exmm_stage_regs_csr_write <= 1'h0; // @[RISCV_core.scala 186:32]
    end else if (pipeline_control_io_exmm_clear_o) begin // @[RISCV_core.scala 325:43]
      exmm_stage_regs_csr_write <= 1'h0; // @[RISCV_core.scala 326:21]
    end else if (pipeline_control_io_exmm_we_o) begin // @[RISCV_core.scala 327:47]
      exmm_stage_regs_csr_write <= idex_stage_regs_csr_write; // @[RISCV_core.scala 339:31]
    end
    if (reset) begin // @[RISCV_core.scala 186:32]
      exmm_stage_regs_csr_write_addr <= 32'h0; // @[RISCV_core.scala 186:32]
    end else if (pipeline_control_io_exmm_clear_o) begin // @[RISCV_core.scala 325:43]
      exmm_stage_regs_csr_write_addr <= 32'h0; // @[RISCV_core.scala 326:21]
    end else if (pipeline_control_io_exmm_we_o) begin // @[RISCV_core.scala 327:47]
      exmm_stage_regs_csr_write_addr <= idex_stage_regs_csr_write_addr; // @[RISCV_core.scala 340:36]
    end
    if (reset) begin // @[RISCV_core.scala 186:32]
      exmm_stage_regs_csr_write_data <= 32'h0; // @[RISCV_core.scala 186:32]
    end else begin
      exmm_stage_regs_csr_write_data <= _GEN_86[31:0];
    end
    if (reset) begin // @[RISCV_core.scala 186:32]
      exmm_stage_regs_csr_rdata <= 32'h0; // @[RISCV_core.scala 186:32]
    end else if (pipeline_control_io_exmm_clear_o) begin // @[RISCV_core.scala 325:43]
      exmm_stage_regs_csr_rdata <= 32'h0; // @[RISCV_core.scala 326:21]
    end else if (pipeline_control_io_exmm_we_o) begin // @[RISCV_core.scala 327:47]
      exmm_stage_regs_csr_rdata <= idex_stage_regs_csr_rdata; // @[RISCV_core.scala 341:31]
    end
    if (reset) begin // @[RISCV_core.scala 202:32]
      mmwb_stage_regs_instr_next_addr <= 32'h0; // @[RISCV_core.scala 202:32]
    end else if (pipeline_control_io_mmwb_clear_o) begin // @[RISCV_core.scala 434:43]
      mmwb_stage_regs_instr_next_addr <= 32'h0; // @[RISCV_core.scala 435:21]
    end else if (pipeline_control_io_mmwb_we_o) begin // @[RISCV_core.scala 436:47]
      mmwb_stage_regs_instr_next_addr <= exmm_stage_regs_instr_next_addr; // @[RISCV_core.scala 439:37]
    end
    if (reset) begin // @[RISCV_core.scala 202:32]
      mmwb_stage_regs_alu_result <= 32'h0; // @[RISCV_core.scala 202:32]
    end else if (pipeline_control_io_mmwb_clear_o) begin // @[RISCV_core.scala 434:43]
      mmwb_stage_regs_alu_result <= 32'h0; // @[RISCV_core.scala 435:21]
    end else if (pipeline_control_io_mmwb_we_o) begin // @[RISCV_core.scala 436:47]
      mmwb_stage_regs_alu_result <= exmm_stage_regs_alu_result; // @[RISCV_core.scala 440:32]
    end
    if (reset) begin // @[RISCV_core.scala 202:32]
      mmwb_stage_regs_mem_result <= 32'h0; // @[RISCV_core.scala 202:32]
    end else if (pipeline_control_io_mmwb_clear_o) begin // @[RISCV_core.scala 434:43]
      mmwb_stage_regs_mem_result <= 32'h0; // @[RISCV_core.scala 435:21]
    end else if (pipeline_control_io_mmwb_we_o) begin // @[RISCV_core.scala 436:47]
      if (_T_29) begin // @[Conditional.scala 40:58]
        mmwb_stage_regs_mem_result <= _mmwb_stage_regs_mem_result_T_2; // @[RISCV_core.scala 444:36]
      end else begin
        mmwb_stage_regs_mem_result <= _GEN_125;
      end
    end
    if (reset) begin // @[RISCV_core.scala 202:32]
      mmwb_stage_regs_reg_write <= 1'h0; // @[RISCV_core.scala 202:32]
    end else if (pipeline_control_io_mmwb_clear_o) begin // @[RISCV_core.scala 434:43]
      mmwb_stage_regs_reg_write <= 1'h0; // @[RISCV_core.scala 435:21]
    end else if (pipeline_control_io_mmwb_we_o) begin // @[RISCV_core.scala 436:47]
      mmwb_stage_regs_reg_write <= exmm_stage_regs_reg_write; // @[RISCV_core.scala 459:31]
    end
    if (reset) begin // @[RISCV_core.scala 202:32]
      mmwb_stage_regs_reg_write_src <= 2'h1; // @[RISCV_core.scala 202:32]
    end else if (pipeline_control_io_mmwb_clear_o) begin // @[RISCV_core.scala 434:43]
      mmwb_stage_regs_reg_write_src <= 2'h1; // @[RISCV_core.scala 435:21]
    end else if (pipeline_control_io_mmwb_we_o) begin // @[RISCV_core.scala 436:47]
      mmwb_stage_regs_reg_write_src <= exmm_stage_regs_reg_write_src; // @[RISCV_core.scala 460:35]
    end
    if (reset) begin // @[RISCV_core.scala 202:32]
      mmwb_stage_regs_reg_write_addr <= 5'h0; // @[RISCV_core.scala 202:32]
    end else if (pipeline_control_io_mmwb_clear_o) begin // @[RISCV_core.scala 434:43]
      mmwb_stage_regs_reg_write_addr <= 5'h0; // @[RISCV_core.scala 435:21]
    end else if (pipeline_control_io_mmwb_we_o) begin // @[RISCV_core.scala 436:47]
      mmwb_stage_regs_reg_write_addr <= exmm_stage_regs_reg_write_addr; // @[RISCV_core.scala 461:36]
    end
    if (reset) begin // @[RISCV_core.scala 202:32]
      mmwb_stage_regs_csr_write <= 1'h0; // @[RISCV_core.scala 202:32]
    end else if (pipeline_control_io_mmwb_clear_o) begin // @[RISCV_core.scala 434:43]
      mmwb_stage_regs_csr_write <= 1'h0; // @[RISCV_core.scala 435:21]
    end else if (pipeline_control_io_mmwb_we_o) begin // @[RISCV_core.scala 436:47]
      mmwb_stage_regs_csr_write <= exmm_stage_regs_csr_write; // @[RISCV_core.scala 462:31]
    end
    if (reset) begin // @[RISCV_core.scala 202:32]
      mmwb_stage_regs_csr_write_addr <= 32'h0; // @[RISCV_core.scala 202:32]
    end else if (pipeline_control_io_mmwb_clear_o) begin // @[RISCV_core.scala 434:43]
      mmwb_stage_regs_csr_write_addr <= 32'h0; // @[RISCV_core.scala 435:21]
    end else if (pipeline_control_io_mmwb_we_o) begin // @[RISCV_core.scala 436:47]
      mmwb_stage_regs_csr_write_addr <= exmm_stage_regs_csr_write_addr; // @[RISCV_core.scala 463:36]
    end
    if (reset) begin // @[RISCV_core.scala 202:32]
      mmwb_stage_regs_csr_write_data <= 32'h0; // @[RISCV_core.scala 202:32]
    end else if (pipeline_control_io_mmwb_clear_o) begin // @[RISCV_core.scala 434:43]
      mmwb_stage_regs_csr_write_data <= 32'h0; // @[RISCV_core.scala 435:21]
    end else if (pipeline_control_io_mmwb_we_o) begin // @[RISCV_core.scala 436:47]
      mmwb_stage_regs_csr_write_data <= exmm_stage_regs_csr_write_data; // @[RISCV_core.scala 464:36]
    end
    if (reset) begin // @[RISCV_core.scala 202:32]
      mmwb_stage_regs_csr_rdata <= 32'h0; // @[RISCV_core.scala 202:32]
    end else if (pipeline_control_io_mmwb_clear_o) begin // @[RISCV_core.scala 434:43]
      mmwb_stage_regs_csr_rdata <= 32'h0; // @[RISCV_core.scala 435:21]
    end else if (pipeline_control_io_mmwb_we_o) begin // @[RISCV_core.scala 436:47]
      mmwb_stage_regs_csr_rdata <= exmm_stage_regs_csr_rdata; // @[RISCV_core.scala 465:31]
    end
  end
// Register and memory initialization
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
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pc_current_pc = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  pc_next_pc = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  ifid_stage_regs_instr_addr = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  ifid_stage_regs_instr_data = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  ifid_stage_regs_instr_next_addr = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  idex_stage_regs_instr_addr = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  idex_stage_regs_instr_data = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  idex_stage_regs_instr_next_addr = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  idex_stage_regs_rs1_data = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  idex_stage_regs_rs2_data = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  idex_stage_regs_imm = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  idex_stage_regs_reg_write = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  idex_stage_regs_reg_write_src = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  idex_stage_regs_reg_write_addr = _RAND_13[4:0];
  _RAND_14 = {1{`RANDOM}};
  idex_stage_regs_mem_write = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  idex_stage_regs_mem_op = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  idex_stage_regs_jump = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  idex_stage_regs_branch = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  idex_stage_regs_alu_op1_src = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  idex_stage_regs_alu_op2_src = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  idex_stage_regs_alu_op = _RAND_20[3:0];
  _RAND_21 = {1{`RANDOM}};
  idex_stage_regs_comp_op = _RAND_21[2:0];
  _RAND_22 = {1{`RANDOM}};
  idex_stage_regs_csr_write = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  idex_stage_regs_csr_write_addr = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  idex_stage_regs_csr_rdata = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  exmm_stage_regs_instr_next_addr = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  exmm_stage_regs_alu_result = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  exmm_stage_regs_rs2_data = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  exmm_stage_regs_mem_write = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  exmm_stage_regs_mem_op = _RAND_29[3:0];
  _RAND_30 = {1{`RANDOM}};
  exmm_stage_regs_reg_write = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  exmm_stage_regs_reg_write_src = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  exmm_stage_regs_reg_write_addr = _RAND_32[4:0];
  _RAND_33 = {1{`RANDOM}};
  exmm_stage_regs_csr_write = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  exmm_stage_regs_csr_write_addr = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  exmm_stage_regs_csr_write_data = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  exmm_stage_regs_csr_rdata = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  mmwb_stage_regs_instr_next_addr = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  mmwb_stage_regs_alu_result = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  mmwb_stage_regs_mem_result = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  mmwb_stage_regs_reg_write = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  mmwb_stage_regs_reg_write_src = _RAND_41[1:0];
  _RAND_42 = {1{`RANDOM}};
  mmwb_stage_regs_reg_write_addr = _RAND_42[4:0];
  _RAND_43 = {1{`RANDOM}};
  mmwb_stage_regs_csr_write = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  mmwb_stage_regs_csr_write_addr = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  mmwb_stage_regs_csr_write_data = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  mmwb_stage_regs_csr_rdata = _RAND_46[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
