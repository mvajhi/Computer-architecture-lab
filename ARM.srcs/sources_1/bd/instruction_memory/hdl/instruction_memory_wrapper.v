//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Jun  3 16:25:36 2025
//Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
//Command     : generate_target instruction_memory_wrapper.bd
//Design      : instruction_memory_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module instruction_memory_wrapper
   (clk,
    rst);
  input clk;
  input [0:0]rst;

  wire clk;
  wire [0:0]rst;

  instruction_memory instruction_memory_i
       (.clk(clk),
        .rst(rst));
endmodule
