// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 29 17:26:58 2025
// Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_if_comp_top_1_0/instruction_memory_if_comp_top_1_0_sim_netlist.v
// Design      : instruction_memory_if_comp_top_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "instruction_memory_if_comp_top_1_0,if_comp_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "if_comp_top,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module instruction_memory_if_comp_top_1_0
   (clk,
    rst,
    freeze,
    branch_taken,
    branch_address,
    adder_res,
    pc_to_im);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input freeze;
  input branch_taken;
  input [31:0]branch_address;
  output [31:0]adder_res;
  output [31:0]pc_to_im;

  wire [31:0]adder_res;
  wire branch_taken;
  wire clk;
  wire freeze;
  wire [31:0]pc_to_im;
  wire rst;

  instruction_memory_if_comp_top_1_0_if_comp_top inst
       (.adder_res(adder_res),
        .branch_taken(branch_taken),
        .clk(clk),
        .freeze(freeze),
        .pc_to_im(pc_to_im),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module instruction_memory_if_comp_top_1_0_adder
   (adder_res,
    pc_to_im);
  output [30:0]adder_res;
  input [31:0]pc_to_im;

  wire [30:0]adder_res;
  wire out_carry__0_n_0;
  wire out_carry__0_n_1;
  wire out_carry__0_n_2;
  wire out_carry__0_n_3;
  wire out_carry__1_n_0;
  wire out_carry__1_n_1;
  wire out_carry__1_n_2;
  wire out_carry__1_n_3;
  wire out_carry__2_n_0;
  wire out_carry__2_n_1;
  wire out_carry__2_n_2;
  wire out_carry__2_n_3;
  wire out_carry__3_n_0;
  wire out_carry__3_n_1;
  wire out_carry__3_n_2;
  wire out_carry__3_n_3;
  wire out_carry__4_n_0;
  wire out_carry__4_n_1;
  wire out_carry__4_n_2;
  wire out_carry__4_n_3;
  wire out_carry__5_n_0;
  wire out_carry__5_n_1;
  wire out_carry__5_n_2;
  wire out_carry__5_n_3;
  wire out_carry__6_n_2;
  wire out_carry__6_n_3;
  wire out_carry_n_0;
  wire out_carry_n_1;
  wire out_carry_n_2;
  wire out_carry_n_3;
  wire [31:0]pc_to_im;
  wire [3:2]NLW_out_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_out_carry__6_O_UNCONNECTED;

  CARRY4 out_carry
       (.CI(1'b0),
        .CO({out_carry_n_0,out_carry_n_1,out_carry_n_2,out_carry_n_3}),
        .CYINIT(pc_to_im[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(adder_res[3:0]),
        .S(pc_to_im[4:1]));
  CARRY4 out_carry__0
       (.CI(out_carry_n_0),
        .CO({out_carry__0_n_0,out_carry__0_n_1,out_carry__0_n_2,out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(adder_res[7:4]),
        .S(pc_to_im[8:5]));
  CARRY4 out_carry__1
       (.CI(out_carry__0_n_0),
        .CO({out_carry__1_n_0,out_carry__1_n_1,out_carry__1_n_2,out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(adder_res[11:8]),
        .S(pc_to_im[12:9]));
  CARRY4 out_carry__2
       (.CI(out_carry__1_n_0),
        .CO({out_carry__2_n_0,out_carry__2_n_1,out_carry__2_n_2,out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(adder_res[15:12]),
        .S(pc_to_im[16:13]));
  CARRY4 out_carry__3
       (.CI(out_carry__2_n_0),
        .CO({out_carry__3_n_0,out_carry__3_n_1,out_carry__3_n_2,out_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(adder_res[19:16]),
        .S(pc_to_im[20:17]));
  CARRY4 out_carry__4
       (.CI(out_carry__3_n_0),
        .CO({out_carry__4_n_0,out_carry__4_n_1,out_carry__4_n_2,out_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(adder_res[23:20]),
        .S(pc_to_im[24:21]));
  CARRY4 out_carry__5
       (.CI(out_carry__4_n_0),
        .CO({out_carry__5_n_0,out_carry__5_n_1,out_carry__5_n_2,out_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(adder_res[27:24]),
        .S(pc_to_im[28:25]));
  CARRY4 out_carry__6
       (.CI(out_carry__5_n_0),
        .CO({NLW_out_carry__6_CO_UNCONNECTED[3:2],out_carry__6_n_2,out_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_out_carry__6_O_UNCONNECTED[3],adder_res[30:28]}),
        .S({1'b0,pc_to_im[31:29]}));
endmodule

(* ORIG_REF_NAME = "if_comp_top" *) 
module instruction_memory_if_comp_top_1_0_if_comp_top
   (pc_to_im,
    adder_res,
    branch_taken,
    clk,
    freeze,
    rst);
  output [31:0]pc_to_im;
  output [31:0]adder_res;
  input branch_taken;
  input clk;
  input freeze;
  input rst;

  wire [31:0]adder_res;
  wire branch_taken;
  wire clk;
  wire freeze;
  wire [31:0]pc_to_im;
  wire rst;

  instruction_memory_if_comp_top_1_0_adder pc_adder
       (.adder_res(adder_res[31:1]),
        .pc_to_im(pc_to_im));
  instruction_memory_if_comp_top_1_0_pc_register pcreg
       (.adder_res(adder_res[0]),
        .branch_taken(branch_taken),
        .clk(clk),
        .freeze(freeze),
        .pc_to_im(pc_to_im),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "pc_register" *) 
module instruction_memory_if_comp_top_1_0_pc_register
   (pc_to_im,
    adder_res,
    branch_taken,
    clk,
    freeze,
    rst);
  output [31:0]pc_to_im;
  output [0:0]adder_res;
  input branch_taken;
  input clk;
  input freeze;
  input rst;

  wire [0:0]adder_res;
  wire branch_taken;
  wire clk;
  wire freeze;
  wire p_0_in;
  wire \pc_out[11]_i_2_n_0 ;
  wire \pc_out[11]_i_3_n_0 ;
  wire \pc_out[11]_i_4_n_0 ;
  wire \pc_out[11]_i_5_n_0 ;
  wire \pc_out[15]_i_2_n_0 ;
  wire \pc_out[15]_i_3_n_0 ;
  wire \pc_out[15]_i_4_n_0 ;
  wire \pc_out[15]_i_5_n_0 ;
  wire \pc_out[19]_i_2_n_0 ;
  wire \pc_out[19]_i_3_n_0 ;
  wire \pc_out[19]_i_4_n_0 ;
  wire \pc_out[19]_i_5_n_0 ;
  wire \pc_out[23]_i_2_n_0 ;
  wire \pc_out[23]_i_3_n_0 ;
  wire \pc_out[23]_i_4_n_0 ;
  wire \pc_out[23]_i_5_n_0 ;
  wire \pc_out[27]_i_2_n_0 ;
  wire \pc_out[27]_i_3_n_0 ;
  wire \pc_out[27]_i_4_n_0 ;
  wire \pc_out[27]_i_5_n_0 ;
  wire \pc_out[31]_i_3_n_0 ;
  wire \pc_out[31]_i_4_n_0 ;
  wire \pc_out[31]_i_5_n_0 ;
  wire \pc_out[31]_i_6_n_0 ;
  wire \pc_out[31]_i_7_n_0 ;
  wire \pc_out[3]_i_2_n_0 ;
  wire \pc_out[3]_i_3_n_0 ;
  wire \pc_out[3]_i_4_n_0 ;
  wire \pc_out[3]_i_5_n_0 ;
  wire \pc_out[3]_i_6_n_0 ;
  wire \pc_out[7]_i_2_n_0 ;
  wire \pc_out[7]_i_3_n_0 ;
  wire \pc_out[7]_i_4_n_0 ;
  wire \pc_out[7]_i_5_n_0 ;
  wire \pc_out_reg[11]_i_1_n_0 ;
  wire \pc_out_reg[11]_i_1_n_1 ;
  wire \pc_out_reg[11]_i_1_n_2 ;
  wire \pc_out_reg[11]_i_1_n_3 ;
  wire \pc_out_reg[11]_i_1_n_4 ;
  wire \pc_out_reg[11]_i_1_n_5 ;
  wire \pc_out_reg[11]_i_1_n_6 ;
  wire \pc_out_reg[11]_i_1_n_7 ;
  wire \pc_out_reg[15]_i_1_n_0 ;
  wire \pc_out_reg[15]_i_1_n_1 ;
  wire \pc_out_reg[15]_i_1_n_2 ;
  wire \pc_out_reg[15]_i_1_n_3 ;
  wire \pc_out_reg[15]_i_1_n_4 ;
  wire \pc_out_reg[15]_i_1_n_5 ;
  wire \pc_out_reg[15]_i_1_n_6 ;
  wire \pc_out_reg[15]_i_1_n_7 ;
  wire \pc_out_reg[19]_i_1_n_0 ;
  wire \pc_out_reg[19]_i_1_n_1 ;
  wire \pc_out_reg[19]_i_1_n_2 ;
  wire \pc_out_reg[19]_i_1_n_3 ;
  wire \pc_out_reg[19]_i_1_n_4 ;
  wire \pc_out_reg[19]_i_1_n_5 ;
  wire \pc_out_reg[19]_i_1_n_6 ;
  wire \pc_out_reg[19]_i_1_n_7 ;
  wire \pc_out_reg[23]_i_1_n_0 ;
  wire \pc_out_reg[23]_i_1_n_1 ;
  wire \pc_out_reg[23]_i_1_n_2 ;
  wire \pc_out_reg[23]_i_1_n_3 ;
  wire \pc_out_reg[23]_i_1_n_4 ;
  wire \pc_out_reg[23]_i_1_n_5 ;
  wire \pc_out_reg[23]_i_1_n_6 ;
  wire \pc_out_reg[23]_i_1_n_7 ;
  wire \pc_out_reg[27]_i_1_n_0 ;
  wire \pc_out_reg[27]_i_1_n_1 ;
  wire \pc_out_reg[27]_i_1_n_2 ;
  wire \pc_out_reg[27]_i_1_n_3 ;
  wire \pc_out_reg[27]_i_1_n_4 ;
  wire \pc_out_reg[27]_i_1_n_5 ;
  wire \pc_out_reg[27]_i_1_n_6 ;
  wire \pc_out_reg[27]_i_1_n_7 ;
  wire \pc_out_reg[31]_i_2_n_1 ;
  wire \pc_out_reg[31]_i_2_n_2 ;
  wire \pc_out_reg[31]_i_2_n_3 ;
  wire \pc_out_reg[31]_i_2_n_4 ;
  wire \pc_out_reg[31]_i_2_n_5 ;
  wire \pc_out_reg[31]_i_2_n_6 ;
  wire \pc_out_reg[31]_i_2_n_7 ;
  wire \pc_out_reg[3]_i_1_n_0 ;
  wire \pc_out_reg[3]_i_1_n_1 ;
  wire \pc_out_reg[3]_i_1_n_2 ;
  wire \pc_out_reg[3]_i_1_n_3 ;
  wire \pc_out_reg[3]_i_1_n_4 ;
  wire \pc_out_reg[3]_i_1_n_5 ;
  wire \pc_out_reg[3]_i_1_n_6 ;
  wire \pc_out_reg[3]_i_1_n_7 ;
  wire \pc_out_reg[7]_i_1_n_0 ;
  wire \pc_out_reg[7]_i_1_n_1 ;
  wire \pc_out_reg[7]_i_1_n_2 ;
  wire \pc_out_reg[7]_i_1_n_3 ;
  wire \pc_out_reg[7]_i_1_n_4 ;
  wire \pc_out_reg[7]_i_1_n_5 ;
  wire \pc_out_reg[7]_i_1_n_6 ;
  wire \pc_out_reg[7]_i_1_n_7 ;
  wire [31:0]pc_to_im;
  wire rst;
  wire [3:3]\NLW_pc_out_reg[31]_i_2_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \adder_res[0]_INST_0 
       (.I0(pc_to_im[0]),
        .O(adder_res));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[11]_i_2 
       (.I0(pc_to_im[11]),
        .I1(branch_taken),
        .O(\pc_out[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[11]_i_3 
       (.I0(pc_to_im[10]),
        .I1(branch_taken),
        .O(\pc_out[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[11]_i_4 
       (.I0(pc_to_im[9]),
        .I1(branch_taken),
        .O(\pc_out[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[11]_i_5 
       (.I0(pc_to_im[8]),
        .I1(branch_taken),
        .O(\pc_out[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[15]_i_2 
       (.I0(pc_to_im[15]),
        .I1(branch_taken),
        .O(\pc_out[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[15]_i_3 
       (.I0(pc_to_im[14]),
        .I1(branch_taken),
        .O(\pc_out[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[15]_i_4 
       (.I0(pc_to_im[13]),
        .I1(branch_taken),
        .O(\pc_out[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[15]_i_5 
       (.I0(pc_to_im[12]),
        .I1(branch_taken),
        .O(\pc_out[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[19]_i_2 
       (.I0(pc_to_im[19]),
        .I1(branch_taken),
        .O(\pc_out[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[19]_i_3 
       (.I0(pc_to_im[18]),
        .I1(branch_taken),
        .O(\pc_out[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[19]_i_4 
       (.I0(pc_to_im[17]),
        .I1(branch_taken),
        .O(\pc_out[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[19]_i_5 
       (.I0(pc_to_im[16]),
        .I1(branch_taken),
        .O(\pc_out[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[23]_i_2 
       (.I0(pc_to_im[23]),
        .I1(branch_taken),
        .O(\pc_out[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[23]_i_3 
       (.I0(pc_to_im[22]),
        .I1(branch_taken),
        .O(\pc_out[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[23]_i_4 
       (.I0(pc_to_im[21]),
        .I1(branch_taken),
        .O(\pc_out[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[23]_i_5 
       (.I0(pc_to_im[20]),
        .I1(branch_taken),
        .O(\pc_out[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[27]_i_2 
       (.I0(pc_to_im[27]),
        .I1(branch_taken),
        .O(\pc_out[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[27]_i_3 
       (.I0(pc_to_im[26]),
        .I1(branch_taken),
        .O(\pc_out[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[27]_i_4 
       (.I0(pc_to_im[25]),
        .I1(branch_taken),
        .O(\pc_out[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[27]_i_5 
       (.I0(pc_to_im[24]),
        .I1(branch_taken),
        .O(\pc_out[27]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pc_out[31]_i_1 
       (.I0(freeze),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \pc_out[31]_i_3 
       (.I0(rst),
        .O(\pc_out[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[31]_i_4 
       (.I0(pc_to_im[31]),
        .I1(branch_taken),
        .O(\pc_out[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[31]_i_5 
       (.I0(pc_to_im[30]),
        .I1(branch_taken),
        .O(\pc_out[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[31]_i_6 
       (.I0(pc_to_im[29]),
        .I1(branch_taken),
        .O(\pc_out[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[31]_i_7 
       (.I0(pc_to_im[28]),
        .I1(branch_taken),
        .O(\pc_out[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[3]_i_2 
       (.I0(pc_to_im[0]),
        .I1(branch_taken),
        .O(\pc_out[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[3]_i_3 
       (.I0(pc_to_im[3]),
        .I1(branch_taken),
        .O(\pc_out[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[3]_i_4 
       (.I0(pc_to_im[2]),
        .I1(branch_taken),
        .O(\pc_out[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[3]_i_5 
       (.I0(pc_to_im[1]),
        .I1(branch_taken),
        .O(\pc_out[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pc_out[3]_i_6 
       (.I0(pc_to_im[0]),
        .I1(branch_taken),
        .O(\pc_out[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[7]_i_2 
       (.I0(pc_to_im[7]),
        .I1(branch_taken),
        .O(\pc_out[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[7]_i_3 
       (.I0(pc_to_im[6]),
        .I1(branch_taken),
        .O(\pc_out[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[7]_i_4 
       (.I0(pc_to_im[5]),
        .I1(branch_taken),
        .O(\pc_out[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_out[7]_i_5 
       (.I0(pc_to_im[4]),
        .I1(branch_taken),
        .O(\pc_out[7]_i_5_n_0 ));
  FDCE \pc_out_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[3]_i_1_n_7 ),
        .Q(pc_to_im[0]));
  FDCE \pc_out_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[11]_i_1_n_5 ),
        .Q(pc_to_im[10]));
  FDCE \pc_out_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[11]_i_1_n_4 ),
        .Q(pc_to_im[11]));
  CARRY4 \pc_out_reg[11]_i_1 
       (.CI(\pc_out_reg[7]_i_1_n_0 ),
        .CO({\pc_out_reg[11]_i_1_n_0 ,\pc_out_reg[11]_i_1_n_1 ,\pc_out_reg[11]_i_1_n_2 ,\pc_out_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_out_reg[11]_i_1_n_4 ,\pc_out_reg[11]_i_1_n_5 ,\pc_out_reg[11]_i_1_n_6 ,\pc_out_reg[11]_i_1_n_7 }),
        .S({\pc_out[11]_i_2_n_0 ,\pc_out[11]_i_3_n_0 ,\pc_out[11]_i_4_n_0 ,\pc_out[11]_i_5_n_0 }));
  FDCE \pc_out_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[15]_i_1_n_7 ),
        .Q(pc_to_im[12]));
  FDCE \pc_out_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[15]_i_1_n_6 ),
        .Q(pc_to_im[13]));
  FDCE \pc_out_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[15]_i_1_n_5 ),
        .Q(pc_to_im[14]));
  FDCE \pc_out_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[15]_i_1_n_4 ),
        .Q(pc_to_im[15]));
  CARRY4 \pc_out_reg[15]_i_1 
       (.CI(\pc_out_reg[11]_i_1_n_0 ),
        .CO({\pc_out_reg[15]_i_1_n_0 ,\pc_out_reg[15]_i_1_n_1 ,\pc_out_reg[15]_i_1_n_2 ,\pc_out_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_out_reg[15]_i_1_n_4 ,\pc_out_reg[15]_i_1_n_5 ,\pc_out_reg[15]_i_1_n_6 ,\pc_out_reg[15]_i_1_n_7 }),
        .S({\pc_out[15]_i_2_n_0 ,\pc_out[15]_i_3_n_0 ,\pc_out[15]_i_4_n_0 ,\pc_out[15]_i_5_n_0 }));
  FDCE \pc_out_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[19]_i_1_n_7 ),
        .Q(pc_to_im[16]));
  FDCE \pc_out_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[19]_i_1_n_6 ),
        .Q(pc_to_im[17]));
  FDCE \pc_out_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[19]_i_1_n_5 ),
        .Q(pc_to_im[18]));
  FDCE \pc_out_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[19]_i_1_n_4 ),
        .Q(pc_to_im[19]));
  CARRY4 \pc_out_reg[19]_i_1 
       (.CI(\pc_out_reg[15]_i_1_n_0 ),
        .CO({\pc_out_reg[19]_i_1_n_0 ,\pc_out_reg[19]_i_1_n_1 ,\pc_out_reg[19]_i_1_n_2 ,\pc_out_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_out_reg[19]_i_1_n_4 ,\pc_out_reg[19]_i_1_n_5 ,\pc_out_reg[19]_i_1_n_6 ,\pc_out_reg[19]_i_1_n_7 }),
        .S({\pc_out[19]_i_2_n_0 ,\pc_out[19]_i_3_n_0 ,\pc_out[19]_i_4_n_0 ,\pc_out[19]_i_5_n_0 }));
  FDCE \pc_out_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[3]_i_1_n_6 ),
        .Q(pc_to_im[1]));
  FDCE \pc_out_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[23]_i_1_n_7 ),
        .Q(pc_to_im[20]));
  FDCE \pc_out_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[23]_i_1_n_6 ),
        .Q(pc_to_im[21]));
  FDCE \pc_out_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[23]_i_1_n_5 ),
        .Q(pc_to_im[22]));
  FDCE \pc_out_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[23]_i_1_n_4 ),
        .Q(pc_to_im[23]));
  CARRY4 \pc_out_reg[23]_i_1 
       (.CI(\pc_out_reg[19]_i_1_n_0 ),
        .CO({\pc_out_reg[23]_i_1_n_0 ,\pc_out_reg[23]_i_1_n_1 ,\pc_out_reg[23]_i_1_n_2 ,\pc_out_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_out_reg[23]_i_1_n_4 ,\pc_out_reg[23]_i_1_n_5 ,\pc_out_reg[23]_i_1_n_6 ,\pc_out_reg[23]_i_1_n_7 }),
        .S({\pc_out[23]_i_2_n_0 ,\pc_out[23]_i_3_n_0 ,\pc_out[23]_i_4_n_0 ,\pc_out[23]_i_5_n_0 }));
  FDCE \pc_out_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[27]_i_1_n_7 ),
        .Q(pc_to_im[24]));
  FDCE \pc_out_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[27]_i_1_n_6 ),
        .Q(pc_to_im[25]));
  FDCE \pc_out_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[27]_i_1_n_5 ),
        .Q(pc_to_im[26]));
  FDCE \pc_out_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[27]_i_1_n_4 ),
        .Q(pc_to_im[27]));
  CARRY4 \pc_out_reg[27]_i_1 
       (.CI(\pc_out_reg[23]_i_1_n_0 ),
        .CO({\pc_out_reg[27]_i_1_n_0 ,\pc_out_reg[27]_i_1_n_1 ,\pc_out_reg[27]_i_1_n_2 ,\pc_out_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_out_reg[27]_i_1_n_4 ,\pc_out_reg[27]_i_1_n_5 ,\pc_out_reg[27]_i_1_n_6 ,\pc_out_reg[27]_i_1_n_7 }),
        .S({\pc_out[27]_i_2_n_0 ,\pc_out[27]_i_3_n_0 ,\pc_out[27]_i_4_n_0 ,\pc_out[27]_i_5_n_0 }));
  FDCE \pc_out_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[31]_i_2_n_7 ),
        .Q(pc_to_im[28]));
  FDCE \pc_out_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[31]_i_2_n_6 ),
        .Q(pc_to_im[29]));
  FDCE \pc_out_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[3]_i_1_n_5 ),
        .Q(pc_to_im[2]));
  FDCE \pc_out_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[31]_i_2_n_5 ),
        .Q(pc_to_im[30]));
  FDCE \pc_out_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[31]_i_2_n_4 ),
        .Q(pc_to_im[31]));
  CARRY4 \pc_out_reg[31]_i_2 
       (.CI(\pc_out_reg[27]_i_1_n_0 ),
        .CO({\NLW_pc_out_reg[31]_i_2_CO_UNCONNECTED [3],\pc_out_reg[31]_i_2_n_1 ,\pc_out_reg[31]_i_2_n_2 ,\pc_out_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_out_reg[31]_i_2_n_4 ,\pc_out_reg[31]_i_2_n_5 ,\pc_out_reg[31]_i_2_n_6 ,\pc_out_reg[31]_i_2_n_7 }),
        .S({\pc_out[31]_i_4_n_0 ,\pc_out[31]_i_5_n_0 ,\pc_out[31]_i_6_n_0 ,\pc_out[31]_i_7_n_0 }));
  FDCE \pc_out_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[3]_i_1_n_4 ),
        .Q(pc_to_im[3]));
  CARRY4 \pc_out_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\pc_out_reg[3]_i_1_n_0 ,\pc_out_reg[3]_i_1_n_1 ,\pc_out_reg[3]_i_1_n_2 ,\pc_out_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pc_out[3]_i_2_n_0 }),
        .O({\pc_out_reg[3]_i_1_n_4 ,\pc_out_reg[3]_i_1_n_5 ,\pc_out_reg[3]_i_1_n_6 ,\pc_out_reg[3]_i_1_n_7 }),
        .S({\pc_out[3]_i_3_n_0 ,\pc_out[3]_i_4_n_0 ,\pc_out[3]_i_5_n_0 ,\pc_out[3]_i_6_n_0 }));
  FDCE \pc_out_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[7]_i_1_n_7 ),
        .Q(pc_to_im[4]));
  FDCE \pc_out_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[7]_i_1_n_6 ),
        .Q(pc_to_im[5]));
  FDCE \pc_out_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[7]_i_1_n_5 ),
        .Q(pc_to_im[6]));
  FDCE \pc_out_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[7]_i_1_n_4 ),
        .Q(pc_to_im[7]));
  CARRY4 \pc_out_reg[7]_i_1 
       (.CI(\pc_out_reg[3]_i_1_n_0 ),
        .CO({\pc_out_reg[7]_i_1_n_0 ,\pc_out_reg[7]_i_1_n_1 ,\pc_out_reg[7]_i_1_n_2 ,\pc_out_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_out_reg[7]_i_1_n_4 ,\pc_out_reg[7]_i_1_n_5 ,\pc_out_reg[7]_i_1_n_6 ,\pc_out_reg[7]_i_1_n_7 }),
        .S({\pc_out[7]_i_2_n_0 ,\pc_out[7]_i_3_n_0 ,\pc_out[7]_i_4_n_0 ,\pc_out[7]_i_5_n_0 }));
  FDCE \pc_out_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[11]_i_1_n_7 ),
        .Q(pc_to_im[8]));
  FDCE \pc_out_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(\pc_out[31]_i_3_n_0 ),
        .D(\pc_out_reg[11]_i_1_n_6 ),
        .Q(pc_to_im[9]));
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
