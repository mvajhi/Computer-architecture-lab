// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 15 16:50:24 2025
// Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_Register_2_1/instruction_memory_Register_2_1_sim_netlist.v
// Design      : instruction_memory_Register_2_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "instruction_memory_Register_2_1,Register,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Register,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module instruction_memory_Register_2_1
   (clk,
    rst,
    flush,
    freeze,
    reg_in,
    reg_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input flush;
  input freeze;
  input [63:0]reg_in;
  output [63:0]reg_out;

  wire clk;
  wire flush;
  wire freeze;
  wire [63:0]reg_in;
  wire [63:0]reg_out;
  wire rst;

  instruction_memory_Register_2_1_Register inst
       (.clk(clk),
        .flush(flush),
        .freeze(freeze),
        .reg_in(reg_in),
        .reg_out(reg_out),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Register" *) 
module instruction_memory_Register_2_1_Register
   (reg_out,
    flush,
    freeze,
    clk,
    rst,
    reg_in);
  output [63:0]reg_out;
  input flush;
  input freeze;
  input clk;
  input rst;
  input [63:0]reg_in;

  wire clk;
  wire flush;
  wire freeze;
  wire [63:0]p_1_in;
  wire [63:0]reg_in;
  wire [63:0]reg_out;
  wire \reg_out[63]_i_1_n_0 ;
  wire \reg_out[63]_i_3_n_0 ;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[0]_i_1 
       (.I0(reg_in[0]),
        .I1(flush),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[10]_i_1 
       (.I0(reg_in[10]),
        .I1(flush),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[11]_i_1 
       (.I0(reg_in[11]),
        .I1(flush),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[12]_i_1 
       (.I0(reg_in[12]),
        .I1(flush),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[13]_i_1 
       (.I0(reg_in[13]),
        .I1(flush),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[14]_i_1 
       (.I0(reg_in[14]),
        .I1(flush),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[15]_i_1 
       (.I0(reg_in[15]),
        .I1(flush),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[16]_i_1 
       (.I0(reg_in[16]),
        .I1(flush),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[17]_i_1 
       (.I0(reg_in[17]),
        .I1(flush),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[18]_i_1 
       (.I0(reg_in[18]),
        .I1(flush),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[19]_i_1 
       (.I0(reg_in[19]),
        .I1(flush),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[1]_i_1 
       (.I0(reg_in[1]),
        .I1(flush),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[20]_i_1 
       (.I0(reg_in[20]),
        .I1(flush),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[21]_i_1 
       (.I0(reg_in[21]),
        .I1(flush),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[22]_i_1 
       (.I0(reg_in[22]),
        .I1(flush),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[23]_i_1 
       (.I0(reg_in[23]),
        .I1(flush),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[24]_i_1 
       (.I0(reg_in[24]),
        .I1(flush),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[25]_i_1 
       (.I0(reg_in[25]),
        .I1(flush),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[26]_i_1 
       (.I0(reg_in[26]),
        .I1(flush),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[27]_i_1 
       (.I0(reg_in[27]),
        .I1(flush),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[28]_i_1 
       (.I0(reg_in[28]),
        .I1(flush),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[29]_i_1 
       (.I0(reg_in[29]),
        .I1(flush),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[2]_i_1 
       (.I0(reg_in[2]),
        .I1(flush),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[30]_i_1 
       (.I0(reg_in[30]),
        .I1(flush),
        .O(p_1_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[31]_i_1 
       (.I0(reg_in[31]),
        .I1(flush),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[32]_i_1 
       (.I0(reg_in[32]),
        .I1(flush),
        .O(p_1_in[32]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[33]_i_1 
       (.I0(reg_in[33]),
        .I1(flush),
        .O(p_1_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[34]_i_1 
       (.I0(reg_in[34]),
        .I1(flush),
        .O(p_1_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[35]_i_1 
       (.I0(reg_in[35]),
        .I1(flush),
        .O(p_1_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[36]_i_1 
       (.I0(reg_in[36]),
        .I1(flush),
        .O(p_1_in[36]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[37]_i_1 
       (.I0(reg_in[37]),
        .I1(flush),
        .O(p_1_in[37]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[38]_i_1 
       (.I0(reg_in[38]),
        .I1(flush),
        .O(p_1_in[38]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[39]_i_1 
       (.I0(reg_in[39]),
        .I1(flush),
        .O(p_1_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[3]_i_1 
       (.I0(reg_in[3]),
        .I1(flush),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[40]_i_1 
       (.I0(reg_in[40]),
        .I1(flush),
        .O(p_1_in[40]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[41]_i_1 
       (.I0(reg_in[41]),
        .I1(flush),
        .O(p_1_in[41]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[42]_i_1 
       (.I0(reg_in[42]),
        .I1(flush),
        .O(p_1_in[42]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[43]_i_1 
       (.I0(reg_in[43]),
        .I1(flush),
        .O(p_1_in[43]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[44]_i_1 
       (.I0(reg_in[44]),
        .I1(flush),
        .O(p_1_in[44]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[45]_i_1 
       (.I0(reg_in[45]),
        .I1(flush),
        .O(p_1_in[45]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[46]_i_1 
       (.I0(reg_in[46]),
        .I1(flush),
        .O(p_1_in[46]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[47]_i_1 
       (.I0(reg_in[47]),
        .I1(flush),
        .O(p_1_in[47]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[48]_i_1 
       (.I0(reg_in[48]),
        .I1(flush),
        .O(p_1_in[48]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[49]_i_1 
       (.I0(reg_in[49]),
        .I1(flush),
        .O(p_1_in[49]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[4]_i_1 
       (.I0(reg_in[4]),
        .I1(flush),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[50]_i_1 
       (.I0(reg_in[50]),
        .I1(flush),
        .O(p_1_in[50]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[51]_i_1 
       (.I0(reg_in[51]),
        .I1(flush),
        .O(p_1_in[51]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[52]_i_1 
       (.I0(reg_in[52]),
        .I1(flush),
        .O(p_1_in[52]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[53]_i_1 
       (.I0(reg_in[53]),
        .I1(flush),
        .O(p_1_in[53]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[54]_i_1 
       (.I0(reg_in[54]),
        .I1(flush),
        .O(p_1_in[54]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[55]_i_1 
       (.I0(reg_in[55]),
        .I1(flush),
        .O(p_1_in[55]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[56]_i_1 
       (.I0(reg_in[56]),
        .I1(flush),
        .O(p_1_in[56]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[57]_i_1 
       (.I0(reg_in[57]),
        .I1(flush),
        .O(p_1_in[57]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[58]_i_1 
       (.I0(reg_in[58]),
        .I1(flush),
        .O(p_1_in[58]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[59]_i_1 
       (.I0(reg_in[59]),
        .I1(flush),
        .O(p_1_in[59]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[5]_i_1 
       (.I0(reg_in[5]),
        .I1(flush),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[60]_i_1 
       (.I0(reg_in[60]),
        .I1(flush),
        .O(p_1_in[60]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[61]_i_1 
       (.I0(reg_in[61]),
        .I1(flush),
        .O(p_1_in[61]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[62]_i_1 
       (.I0(reg_in[62]),
        .I1(flush),
        .O(p_1_in[62]));
  LUT2 #(
    .INIT(4'hB)) 
    \reg_out[63]_i_1 
       (.I0(flush),
        .I1(freeze),
        .O(\reg_out[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[63]_i_2 
       (.I0(reg_in[63]),
        .I1(flush),
        .O(p_1_in[63]));
  LUT1 #(
    .INIT(2'h1)) 
    \reg_out[63]_i_3 
       (.I0(rst),
        .O(\reg_out[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[6]_i_1 
       (.I0(reg_in[6]),
        .I1(flush),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[7]_i_1 
       (.I0(reg_in[7]),
        .I1(flush),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[8]_i_1 
       (.I0(reg_in[8]),
        .I1(flush),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_out[9]_i_1 
       (.I0(reg_in[9]),
        .I1(flush),
        .O(p_1_in[9]));
  FDCE \reg_out_reg[0] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[0]),
        .Q(reg_out[0]));
  FDCE \reg_out_reg[10] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[10]),
        .Q(reg_out[10]));
  FDCE \reg_out_reg[11] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[11]),
        .Q(reg_out[11]));
  FDCE \reg_out_reg[12] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[12]),
        .Q(reg_out[12]));
  FDCE \reg_out_reg[13] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[13]),
        .Q(reg_out[13]));
  FDCE \reg_out_reg[14] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[14]),
        .Q(reg_out[14]));
  FDCE \reg_out_reg[15] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[15]),
        .Q(reg_out[15]));
  FDCE \reg_out_reg[16] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[16]),
        .Q(reg_out[16]));
  FDCE \reg_out_reg[17] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[17]),
        .Q(reg_out[17]));
  FDCE \reg_out_reg[18] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[18]),
        .Q(reg_out[18]));
  FDCE \reg_out_reg[19] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[19]),
        .Q(reg_out[19]));
  FDCE \reg_out_reg[1] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[1]),
        .Q(reg_out[1]));
  FDCE \reg_out_reg[20] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[20]),
        .Q(reg_out[20]));
  FDCE \reg_out_reg[21] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[21]),
        .Q(reg_out[21]));
  FDCE \reg_out_reg[22] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[22]),
        .Q(reg_out[22]));
  FDCE \reg_out_reg[23] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[23]),
        .Q(reg_out[23]));
  FDCE \reg_out_reg[24] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[24]),
        .Q(reg_out[24]));
  FDCE \reg_out_reg[25] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[25]),
        .Q(reg_out[25]));
  FDCE \reg_out_reg[26] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[26]),
        .Q(reg_out[26]));
  FDCE \reg_out_reg[27] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[27]),
        .Q(reg_out[27]));
  FDCE \reg_out_reg[28] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[28]),
        .Q(reg_out[28]));
  FDCE \reg_out_reg[29] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[29]),
        .Q(reg_out[29]));
  FDCE \reg_out_reg[2] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[2]),
        .Q(reg_out[2]));
  FDCE \reg_out_reg[30] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[30]),
        .Q(reg_out[30]));
  FDCE \reg_out_reg[31] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[31]),
        .Q(reg_out[31]));
  FDCE \reg_out_reg[32] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[32]),
        .Q(reg_out[32]));
  FDCE \reg_out_reg[33] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[33]),
        .Q(reg_out[33]));
  FDCE \reg_out_reg[34] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[34]),
        .Q(reg_out[34]));
  FDCE \reg_out_reg[35] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[35]),
        .Q(reg_out[35]));
  FDCE \reg_out_reg[36] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[36]),
        .Q(reg_out[36]));
  FDCE \reg_out_reg[37] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[37]),
        .Q(reg_out[37]));
  FDCE \reg_out_reg[38] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[38]),
        .Q(reg_out[38]));
  FDCE \reg_out_reg[39] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[39]),
        .Q(reg_out[39]));
  FDCE \reg_out_reg[3] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[3]),
        .Q(reg_out[3]));
  FDCE \reg_out_reg[40] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[40]),
        .Q(reg_out[40]));
  FDCE \reg_out_reg[41] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[41]),
        .Q(reg_out[41]));
  FDCE \reg_out_reg[42] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[42]),
        .Q(reg_out[42]));
  FDCE \reg_out_reg[43] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[43]),
        .Q(reg_out[43]));
  FDCE \reg_out_reg[44] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[44]),
        .Q(reg_out[44]));
  FDCE \reg_out_reg[45] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[45]),
        .Q(reg_out[45]));
  FDCE \reg_out_reg[46] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[46]),
        .Q(reg_out[46]));
  FDCE \reg_out_reg[47] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[47]),
        .Q(reg_out[47]));
  FDCE \reg_out_reg[48] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[48]),
        .Q(reg_out[48]));
  FDCE \reg_out_reg[49] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[49]),
        .Q(reg_out[49]));
  FDCE \reg_out_reg[4] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[4]),
        .Q(reg_out[4]));
  FDCE \reg_out_reg[50] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[50]),
        .Q(reg_out[50]));
  FDCE \reg_out_reg[51] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[51]),
        .Q(reg_out[51]));
  FDCE \reg_out_reg[52] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[52]),
        .Q(reg_out[52]));
  FDCE \reg_out_reg[53] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[53]),
        .Q(reg_out[53]));
  FDCE \reg_out_reg[54] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[54]),
        .Q(reg_out[54]));
  FDCE \reg_out_reg[55] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[55]),
        .Q(reg_out[55]));
  FDCE \reg_out_reg[56] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[56]),
        .Q(reg_out[56]));
  FDCE \reg_out_reg[57] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[57]),
        .Q(reg_out[57]));
  FDCE \reg_out_reg[58] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[58]),
        .Q(reg_out[58]));
  FDCE \reg_out_reg[59] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[59]),
        .Q(reg_out[59]));
  FDCE \reg_out_reg[5] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[5]),
        .Q(reg_out[5]));
  FDCE \reg_out_reg[60] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[60]),
        .Q(reg_out[60]));
  FDCE \reg_out_reg[61] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[61]),
        .Q(reg_out[61]));
  FDCE \reg_out_reg[62] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[62]),
        .Q(reg_out[62]));
  FDCE \reg_out_reg[63] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[63]),
        .Q(reg_out[63]));
  FDCE \reg_out_reg[6] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[6]),
        .Q(reg_out[6]));
  FDCE \reg_out_reg[7] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[7]),
        .Q(reg_out[7]));
  FDCE \reg_out_reg[8] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[8]),
        .Q(reg_out[8]));
  FDCE \reg_out_reg[9] 
       (.C(clk),
        .CE(\reg_out[63]_i_1_n_0 ),
        .CLR(\reg_out[63]_i_3_n_0 ),
        .D(p_1_in[9]),
        .Q(reg_out[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
