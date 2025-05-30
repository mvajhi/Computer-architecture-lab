// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 29 17:26:58 2025
// Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_if_comp_top_1_0/instruction_memory_if_comp_top_1_0_stub.v
// Design      : instruction_memory_if_comp_top_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "if_comp_top,Vivado 2018.3" *)
module instruction_memory_if_comp_top_1_0(clk, rst, freeze, branch_taken, branch_address, 
  adder_res, pc_to_im)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,freeze,branch_taken,branch_address[31:0],adder_res[31:0],pc_to_im[31:0]" */;
  input clk;
  input rst;
  input freeze;
  input branch_taken;
  input [31:0]branch_address;
  output [31:0]adder_res;
  output [31:0]pc_to_im;
endmodule
