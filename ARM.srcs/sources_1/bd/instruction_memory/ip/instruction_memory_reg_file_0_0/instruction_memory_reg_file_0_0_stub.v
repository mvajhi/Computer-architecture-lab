// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 22 17:23:57 2025
// Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_reg_file_0_0/instruction_memory_reg_file_0_0_stub.v
// Design      : instruction_memory_reg_file_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "reg_file,Vivado 2018.3" *)
module instruction_memory_reg_file_0_0(clk, rst, inst_rn, inst_rm, inst_dest, 
  value_to_dest, write_enable, rn_value, rm_value)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,inst_rn[3:0],inst_rm[3:0],inst_dest[3:0],value_to_dest[31:0],write_enable,rn_value[31:0],rm_value[31:0]" */;
  input clk;
  input rst;
  input [3:0]inst_rn;
  input [3:0]inst_rm;
  input [3:0]inst_dest;
  input [31:0]value_to_dest;
  input write_enable;
  output [31:0]rn_value;
  output [31:0]rm_value;
endmodule
