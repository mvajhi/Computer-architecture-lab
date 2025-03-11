//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Mar 11 17:00:01 2025
//Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
//Command     : generate_target instruction_memory.bd
//Design      : instruction_memory
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "instruction_memory,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=instruction_memory,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "instruction_memory.hwdef" *) 
module instruction_memory
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst;

  wire Net;
  wire Net2;
  wire [63:0]Register_1_reg_out;
  wire [63:0]Register_2_reg_out;
  wire [63:0]Register_3_reg_out;
  wire [63:0]Register_4_reg_out;
  wire [31:0]blk_mem_gen_0_douta;
  wire [31:0]branch_address_1;
  wire branch_taken_1;
  wire freeze_1;
  wire [31:0]if_comp_top_0_adder_res;
  wire [31:0]if_comp_top_0_pc_to_im;
  wire rst_1;
  wire [63:0]xlconcat_0_dout;
  wire [12:0]xlslice_0_Dout;

  assign Net = clk;
  assign Net2 = flush;
  assign branch_address_1 = branch_address[31:0];
  assign branch_taken_1 = branch_taken;
  assign freeze_1 = freeze;
  assign reg_out[63:0] = Register_4_reg_out;
  assign rst_1 = rst;
  instruction_memory_Register_0_1 Register_1
       (.clk(Net),
        .flush(Net2),
        .freeze(freeze_1),
        .reg_in(xlconcat_0_dout),
        .reg_out(Register_1_reg_out),
        .rst(rst_1));
  instruction_memory_Register_1_0 Register_2
       (.clk(Net),
        .flush(Net2),
        .freeze(freeze_1),
        .reg_in(Register_1_reg_out),
        .reg_out(Register_2_reg_out),
        .rst(rst_1));
  instruction_memory_Register_2_0 Register_3
       (.clk(Net),
        .flush(Net2),
        .freeze(freeze_1),
        .reg_in(Register_2_reg_out),
        .reg_out(Register_3_reg_out),
        .rst(rst_1));
  instruction_memory_Register_2_1 Register_4
       (.clk(Net),
        .flush(Net2),
        .freeze(freeze_1),
        .reg_in(Register_3_reg_out),
        .reg_out(Register_4_reg_out),
        .rst(rst_1));
  instruction_memory_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(xlslice_0_Dout),
        .clka(Net),
        .douta(blk_mem_gen_0_douta));
  instruction_memory_if_comp_top_0_0 if_comp_top_0
       (.adder_res(if_comp_top_0_adder_res),
        .branch_address(branch_address_1),
        .branch_taken(branch_taken_1),
        .clk(Net),
        .freeze(freeze_1),
        .pc_to_im(if_comp_top_0_pc_to_im),
        .rst(rst_1));
  instruction_memory_xlconcat_0_0 xlconcat_0
       (.In0(blk_mem_gen_0_douta),
        .In1(if_comp_top_0_adder_res),
        .dout(xlconcat_0_dout));
  instruction_memory_xlslice_0_0 xlslice_0
       (.Din(if_comp_top_0_pc_to_im),
        .Dout(xlslice_0_Dout));
endmodule
