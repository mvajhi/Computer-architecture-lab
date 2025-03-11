//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Mar 11 17:00:01 2025
//Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
//Command     : generate_target instruction_memory_wrapper.bd
//Design      : instruction_memory_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module instruction_memory_wrapper
   (branch_address,
    branch_taken,
    clk,
    flush,
    freeze,
    reg_out,
    rst);
  input [31:0]branch_address;
  input branch_taken;
  input clk;
  input flush;
  input freeze;
  output [63:0]reg_out;
  input rst;

  wire [31:0]branch_address;
  wire branch_taken;
  wire clk;
  wire flush;
  wire freeze;
  wire [63:0]reg_out;
  wire rst;

  instruction_memory instruction_memory_i
       (.branch_address(branch_address),
        .branch_taken(branch_taken),
        .clk(clk),
        .flush(flush),
        .freeze(freeze),
        .reg_out(reg_out),
        .rst(rst));
endmodule
