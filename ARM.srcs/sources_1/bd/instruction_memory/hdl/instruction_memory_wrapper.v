//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
<<<<<<< HEAD
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue May  6 15:38:57 2025
//Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
=======
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Tue Mar 11 17:30:34 2025
//Host        : mahdi-laptop running 64-bit Ubuntu 24.04.1 LTS
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6
//Command     : generate_target instruction_memory_wrapper.bd
//Design      : instruction_memory_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module instruction_memory_wrapper
   (clk,
    hazard,
    rst,
    status);
  input clk;
  input hazard;
  input [0:0]rst;
  input [3:0]status;

  wire clk;
  wire hazard;
  wire [0:0]rst;
  wire [3:0]status;

  instruction_memory instruction_memory_i
       (.clk(clk),
        .hazard(hazard),
        .rst(rst),
        .status(status));
endmodule
