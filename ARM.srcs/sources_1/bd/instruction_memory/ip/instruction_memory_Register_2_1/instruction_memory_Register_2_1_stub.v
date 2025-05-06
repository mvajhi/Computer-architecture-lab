// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 15 16:50:24 2025
// Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_Register_2_1/instruction_memory_Register_2_1_stub.v
// Design      : instruction_memory_Register_2_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Register,Vivado 2018.3" *)
module instruction_memory_Register_2_1(clk, rst, flush, freeze, reg_in, reg_out)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,flush,freeze,reg_in[63:0],reg_out[63:0]" */;
  input clk;
  input rst;
  input flush;
  input freeze;
  input [63:0]reg_in;
  output [63:0]reg_out;
endmodule
