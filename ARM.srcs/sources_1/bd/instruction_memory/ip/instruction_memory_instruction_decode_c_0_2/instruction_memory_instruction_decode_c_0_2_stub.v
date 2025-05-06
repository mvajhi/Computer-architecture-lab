// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May  6 15:39:37 2025
// Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_instruction_decode_c_0_2/instruction_memory_instruction_decode_c_0_2_stub.v
// Design      : instruction_memory_instruction_decode_c_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "instruction_decode_components,Vivado 2018.3" *)
module instruction_memory_instruction_decode_c_0_2(if_in, status, hazard, rn, rm, mux_reg, two_src, wb_en, 
  mem_r_en, mem_w_en, exe_cmd, b, s_out, pc_out, r1, r2, imm, shift_op, signed_imm, dest)
/* synthesis syn_black_box black_box_pad_pin="if_in[63:0],status[3:0],hazard,rn[3:0],rm[3:0],mux_reg[3:0],two_src,wb_en,mem_r_en,mem_w_en,exe_cmd[3:0],b,s_out,pc_out[31:0],r1[3:0],r2[3:0],imm,shift_op[11:0],signed_imm[23:0],dest[3:0]" */;
  input [63:0]if_in;
  input [3:0]status;
  input hazard;
  output [3:0]rn;
  output [3:0]rm;
  output [3:0]mux_reg;
  output two_src;
  output wb_en;
  output mem_r_en;
  output mem_w_en;
  output [3:0]exe_cmd;
  output b;
  output s_out;
  output [31:0]pc_out;
  output [3:0]r1;
  output [3:0]r2;
  output imm;
  output [11:0]shift_op;
  output [23:0]signed_imm;
  output [3:0]dest;
endmodule
