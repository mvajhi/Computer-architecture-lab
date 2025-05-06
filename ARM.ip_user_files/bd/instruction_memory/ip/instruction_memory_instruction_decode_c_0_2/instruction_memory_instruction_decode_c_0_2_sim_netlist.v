// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May  6 15:39:37 2025
// Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/Projects/CALab/Computer-architecture-lab/ARM.srcs/sources_1/bd/instruction_memory/ip/instruction_memory_instruction_decode_c_0_2/instruction_memory_instruction_decode_c_0_2_sim_netlist.v
// Design      : instruction_memory_instruction_decode_c_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "instruction_memory_instruction_decode_c_0_2,instruction_decode_components,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "instruction_decode_components,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module instruction_memory_instruction_decode_c_0_2
   (if_in,
    status,
    hazard,
    rn,
    rm,
    mux_reg,
    two_src,
    wb_en,
    mem_r_en,
    mem_w_en,
    exe_cmd,
    b,
    s_out,
    pc_out,
    r1,
    r2,
    imm,
    shift_op,
    signed_imm,
    dest);
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

  wire b;
  wire [3:0]exe_cmd;
  wire hazard;
  wire [63:0]if_in;
  wire mem_r_en;
  wire mem_w_en;
  wire [3:0]mux_reg;
  wire s_out;
  wire [3:0]status;
  wire two_src;
  wire wb_en;

  assign dest[3:0] = if_in[15:12];
  assign imm = if_in[25];
  assign pc_out[31:0] = if_in[63:32];
  assign r1[3:0] = if_in[19:16];
  assign r2[3:0] = mux_reg;
  assign rm[3:0] = if_in[3:0];
  assign rn[3:0] = if_in[19:16];
  assign shift_op[11:0] = if_in[11:0];
  assign signed_imm[23:0] = if_in[23:0];
  instruction_memory_instruction_decode_c_0_2_instruction_decode_components inst
       (.b(b),
        .exe_cmd(exe_cmd),
        .hazard(hazard),
        .if_in({if_in[31:20],if_in[15:12],if_in[3:0]}),
        .mem_r_en(mem_r_en),
        .mem_w_en(mem_w_en),
        .mux_reg(mux_reg),
        .s_out(s_out),
        .status(status),
        .two_src(two_src),
        .wb_en(wb_en));
endmodule

(* ORIG_REF_NAME = "condition_check" *) 
module instruction_memory_instruction_decode_c_0_2_condition_check
   (out_cc,
    two_src,
    mem_r_en,
    mux_reg,
    mem_w_en,
    s_out,
    b,
    wb_en,
    hazard,
    if_in,
    status);
  output out_cc;
  output two_src;
  output mem_r_en;
  output [3:0]mux_reg;
  output mem_w_en;
  output s_out;
  output b;
  output wb_en;
  input hazard;
  input [15:0]if_in;
  input [3:0]status;

  wire b;
  wire condition_out_reg_i_1_n_0;
  wire condition_out_reg_i_2_n_0;
  wire condition_out_reg_i_3_n_0;
  wire condition_out_reg_i_4_n_0;
  wire condition_out_reg_i_5_n_0;
  wire condition_out_reg_i_6_n_0;
  wire condition_out_reg_i_7_n_0;
  wire condition_out_reg_i_8_n_0;
  wire hazard;
  wire [15:0]if_in;
  wire mem_r_en;
  wire mem_w_en;
  wire [3:0]mux_reg;
  wire out_cc;
  wire \r2[3]_INST_0_i_1_n_0 ;
  wire s_out;
  wire [3:0]status;
  wire two_src;
  wire wb_en;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    b_INST_0
       (.I0(if_in[10]),
        .I1(if_in[11]),
        .I2(out_cc),
        .I3(hazard),
        .O(b));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    condition_out_reg
       (.CLR(1'b0),
        .D(condition_out_reg_i_1_n_0),
        .G(condition_out_reg_i_2_n_0),
        .GE(1'b1),
        .Q(out_cc));
  MUXF8 condition_out_reg_i_1
       (.I0(condition_out_reg_i_3_n_0),
        .I1(condition_out_reg_i_4_n_0),
        .O(condition_out_reg_i_1_n_0),
        .S(if_in[15]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    condition_out_reg_i_2
       (.I0(if_in[14]),
        .I1(if_in[12]),
        .I2(if_in[13]),
        .I3(if_in[15]),
        .O(condition_out_reg_i_2_n_0));
  MUXF7 condition_out_reg_i_3
       (.I0(condition_out_reg_i_5_n_0),
        .I1(condition_out_reg_i_6_n_0),
        .O(condition_out_reg_i_3_n_0),
        .S(if_in[14]));
  MUXF7 condition_out_reg_i_4
       (.I0(condition_out_reg_i_7_n_0),
        .I1(condition_out_reg_i_8_n_0),
        .O(condition_out_reg_i_4_n_0),
        .S(if_in[14]));
  LUT4 #(
    .INIT(16'h4B78)) 
    condition_out_reg_i_5
       (.I0(status[1]),
        .I1(if_in[13]),
        .I2(if_in[12]),
        .I3(status[2]),
        .O(condition_out_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'h4B78)) 
    condition_out_reg_i_6
       (.I0(status[0]),
        .I1(if_in[13]),
        .I2(if_in[12]),
        .I3(status[3]),
        .O(condition_out_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h60906F90609F6090)) 
    condition_out_reg_i_7
       (.I0(status[0]),
        .I1(status[3]),
        .I2(if_in[13]),
        .I3(if_in[12]),
        .I4(status[1]),
        .I5(status[2]),
        .O(condition_out_reg_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFFBE41)) 
    condition_out_reg_i_8
       (.I0(status[2]),
        .I1(status[3]),
        .I2(status[0]),
        .I3(if_in[12]),
        .I4(if_in[13]),
        .O(condition_out_reg_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    mem_r_en_INST_0
       (.I0(if_in[8]),
        .I1(if_in[10]),
        .I2(if_in[11]),
        .I3(out_cc),
        .I4(hazard),
        .O(mem_r_en));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    mem_w_en_INST_0
       (.I0(if_in[8]),
        .I1(if_in[10]),
        .I2(if_in[11]),
        .I3(out_cc),
        .I4(hazard),
        .O(mem_w_en));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r2[0]_INST_0 
       (.I0(if_in[4]),
        .I1(if_in[8]),
        .I2(if_in[10]),
        .I3(if_in[11]),
        .I4(\r2[3]_INST_0_i_1_n_0 ),
        .I5(if_in[0]),
        .O(mux_reg[0]));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r2[1]_INST_0 
       (.I0(if_in[5]),
        .I1(if_in[8]),
        .I2(if_in[10]),
        .I3(if_in[11]),
        .I4(\r2[3]_INST_0_i_1_n_0 ),
        .I5(if_in[1]),
        .O(mux_reg[1]));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r2[2]_INST_0 
       (.I0(if_in[6]),
        .I1(if_in[8]),
        .I2(if_in[10]),
        .I3(if_in[11]),
        .I4(\r2[3]_INST_0_i_1_n_0 ),
        .I5(if_in[2]),
        .O(mux_reg[2]));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \r2[3]_INST_0 
       (.I0(if_in[7]),
        .I1(if_in[8]),
        .I2(if_in[10]),
        .I3(if_in[11]),
        .I4(\r2[3]_INST_0_i_1_n_0 ),
        .I5(if_in[3]),
        .O(mux_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r2[3]_INST_0_i_1 
       (.I0(hazard),
        .I1(out_cc),
        .O(\r2[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    s_out_INST_0
       (.I0(if_in[8]),
        .I1(out_cc),
        .I2(hazard),
        .O(s_out));
  LUT6 #(
    .INIT(64'h04000000FFFFFFFF)) 
    two_src_INST_0
       (.I0(hazard),
        .I1(out_cc),
        .I2(if_in[11]),
        .I3(if_in[10]),
        .I4(if_in[8]),
        .I5(if_in[9]),
        .O(two_src));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    wb_en_INST_0
       (.I0(if_in[10]),
        .I1(if_in[11]),
        .I2(out_cc),
        .I3(hazard),
        .O(wb_en));
endmodule

(* ORIG_REF_NAME = "control_unit" *) 
module instruction_memory_instruction_decode_c_0_2_control_unit
   (exe_cmd,
    if_in,
    out_cc,
    hazard);
  output [3:0]exe_cmd;
  input [5:0]if_in;
  input out_cc;
  input hazard;

  wire \cu_out_reg[2]_i_1_n_0 ;
  wire \cu_out_reg[3]_i_1_n_0 ;
  wire \cu_out_reg[4]_i_1_n_0 ;
  wire \cu_out_reg[5]_i_1_n_0 ;
  wire [3:0]exe_cmd;
  wire hazard;
  wire [5:0]if_in;
  wire out_cc;
  wire [5:2]out_cu;
  wire [5:5]p_1_out;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cu_out_reg[2] 
       (.CLR(1'b0),
        .D(\cu_out_reg[2]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(out_cu[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF6E0)) 
    \cu_out_reg[2]_i_1 
       (.I0(if_in[1]),
        .I1(if_in[3]),
        .I2(if_in[0]),
        .I3(if_in[2]),
        .O(\cu_out_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cu_out_reg[3] 
       (.CLR(1'b0),
        .D(\cu_out_reg[3]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(out_cu[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h004F)) 
    \cu_out_reg[3]_i_1 
       (.I0(if_in[3]),
        .I1(if_in[2]),
        .I2(if_in[0]),
        .I3(if_in[1]),
        .O(\cu_out_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cu_out_reg[4] 
       (.CLR(1'b0),
        .D(\cu_out_reg[4]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(out_cu[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \cu_out_reg[4]_i_1 
       (.I0(if_in[1]),
        .I1(if_in[3]),
        .I2(if_in[2]),
        .I3(if_in[0]),
        .O(\cu_out_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cu_out_reg[5] 
       (.CLR(1'b0),
        .D(\cu_out_reg[5]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(out_cu[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAB00)) 
    \cu_out_reg[5]_i_1 
       (.I0(if_in[1]),
        .I1(if_in[3]),
        .I2(if_in[2]),
        .I3(if_in[0]),
        .O(\cu_out_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1001010111110111)) 
    \cu_out_reg[5]_i_2 
       (.I0(if_in[4]),
        .I1(if_in[5]),
        .I2(if_in[0]),
        .I3(if_in[3]),
        .I4(if_in[2]),
        .I5(if_in[1]),
        .O(p_1_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \exe_cmd[0]_INST_0 
       (.I0(out_cu[2]),
        .I1(out_cc),
        .I2(hazard),
        .O(exe_cmd[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \exe_cmd[1]_INST_0 
       (.I0(out_cu[3]),
        .I1(out_cc),
        .I2(hazard),
        .O(exe_cmd[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \exe_cmd[2]_INST_0 
       (.I0(out_cu[4]),
        .I1(out_cc),
        .I2(hazard),
        .O(exe_cmd[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \exe_cmd[3]_INST_0 
       (.I0(out_cu[5]),
        .I1(out_cc),
        .I2(hazard),
        .O(exe_cmd[3]));
endmodule

(* ORIG_REF_NAME = "instruction_decode_components" *) 
module instruction_memory_instruction_decode_c_0_2_instruction_decode_components
   (two_src,
    mem_r_en,
    mux_reg,
    mem_w_en,
    s_out,
    b,
    exe_cmd,
    wb_en,
    if_in,
    status,
    hazard);
  output two_src;
  output mem_r_en;
  output [3:0]mux_reg;
  output mem_w_en;
  output s_out;
  output b;
  output [3:0]exe_cmd;
  output wb_en;
  input [19:0]if_in;
  input [3:0]status;
  input hazard;

  wire b;
  wire [3:0]exe_cmd;
  wire hazard;
  wire [19:0]if_in;
  wire mem_r_en;
  wire mem_w_en;
  wire [3:0]mux_reg;
  wire out_cc;
  wire s_out;
  wire [3:0]status;
  wire two_src;
  wire wb_en;

  instruction_memory_instruction_decode_c_0_2_condition_check cc
       (.b(b),
        .hazard(hazard),
        .if_in({if_in[19:13],if_in[8:0]}),
        .mem_r_en(mem_r_en),
        .mem_w_en(mem_w_en),
        .mux_reg(mux_reg),
        .out_cc(out_cc),
        .s_out(s_out),
        .status(status),
        .two_src(two_src),
        .wb_en(wb_en));
  instruction_memory_instruction_decode_c_0_2_control_unit cu
       (.exe_cmd(exe_cmd),
        .hazard(hazard),
        .if_in({if_in[15:14],if_in[12:9]}),
        .out_cc(out_cc));
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
