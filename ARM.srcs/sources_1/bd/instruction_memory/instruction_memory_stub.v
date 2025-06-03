// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed May 28 15:20:00 2025
// Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/instruction_memory_stub.v
// Design      : instruction_memory
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module instruction_memory(clk, hazard, rst, status)
/* synthesis syn_black_box black_box_pad_pin="clk,hazard,rst[0:0],status[3:0]" */;
  input clk;
  input hazard;
  input [0:0]rst;
  input [3:0]status;
endmodule
