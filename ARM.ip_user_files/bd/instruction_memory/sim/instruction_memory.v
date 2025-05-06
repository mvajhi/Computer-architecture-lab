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
//Command     : generate_target instruction_memory.bd
//Design      : instruction_memory
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

<<<<<<< HEAD
(* CORE_GENERATION_INFO = "instruction_memory,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=instruction_memory,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=18,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "instruction_memory.hwdef" *) 
module instruction_memory
   (clk,
    hazard,
    rst,
    status);
  input clk;
  input hazard;
  input [0:0]rst;
  input [3:0]status;

  wire Net;
  wire [0:0]Net2;
=======
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
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6
  wire [63:0]Register_1_reg_out;
  wire [63:0]Register_2_reg_out;
  wire [63:0]Register_3_reg_out;
  wire [63:0]Register_4_reg_out;
<<<<<<< HEAD
  wire [31:0]dist_mem_gen_0_spo;
  wire [0:0]freeze_1;
  wire [31:0]if_comp_top_1_adder_res;
  wire [31:0]if_comp_top_1_pc_to_im;
  wire instruction_decode_c_0_b;
  wire [3:0]instruction_decode_c_0_dest;
  wire [3:0]instruction_decode_c_0_exe_cmd;
  wire instruction_decode_c_0_imm;
  wire instruction_decode_c_0_mem_r_en;
  wire instruction_decode_c_0_mem_w_en;
  wire [3:0]instruction_decode_c_0_mux_reg;
  wire [31:0]instruction_decode_c_0_pc_out;
  wire [3:0]instruction_decode_c_0_r1;
  wire [3:0]instruction_decode_c_0_r2;
  wire [3:0]instruction_decode_c_0_rm;
  wire [3:0]instruction_decode_c_0_rn;
  wire instruction_decode_c_0_s_out;
  wire [11:0]instruction_decode_c_0_shift_op;
  wire [23:0]instruction_decode_c_0_signed_imm;
  wire instruction_decode_c_0_two_src;
  wire instruction_decode_c_0_wb_en;
  wire [31:0]reg_file_0_rm_value;
  wire [31:0]reg_file_0_rn_value;
  wire [0:0]rst_1;
  wire [0:0]rst_2;
  wire [63:0]xlconcat_0_dout;
  wire [158:0]xlconcat_1_dout;
  wire [0:0]xlconstant_2_dout;
  wire [31:0]xlconstant_3_dout;
  wire [0:0]xlconstant_4_dout;
  wire [12:0]xlslice_0_Dout;

  assign Net = clk;
  assign rst_2 = rst[0];
=======
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
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6
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
<<<<<<< HEAD
        .reg_in(xlconcat_1_dout[63:0]),
=======
        .reg_in(Register_1_reg_out),
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6
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
<<<<<<< HEAD
  instruction_memory_debouncer_0_0 debouncer_0
       (.CLK_I(Net),
        .SIGNAL_I(rst_2),
        .SIGNAL_O(rst_1));
  instruction_memory_dist_mem_gen_0_0 dist_mem_gen_0
       (.a(xlslice_0_Dout),
        .spo(dist_mem_gen_0_spo));
  instruction_memory_if_comp_top_1_0 if_comp_top_1
       (.adder_res(if_comp_top_1_adder_res),
        .branch_address(xlconstant_3_dout),
        .branch_taken(xlconstant_2_dout),
        .clk(Net),
        .freeze(freeze_1),
        .pc_to_im(if_comp_top_1_pc_to_im),
        .rst(rst_1));
  instruction_memory_ila_0_1 ila_0
       (.clk(Net),
        .probe0(rst_1),
        .probe1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe3(Register_2_reg_out),
        .probe4(Register_3_reg_out),
        .probe5(Register_4_reg_out));
  instruction_memory_instruction_decode_c_0_2 instruction_decode_c_0
       (.b(instruction_decode_c_0_b),
        .dest(instruction_decode_c_0_dest),
        .exe_cmd(instruction_decode_c_0_exe_cmd),
        .hazard(1'b0),
        .if_in(Register_1_reg_out),
        .imm(instruction_decode_c_0_imm),
        .mem_r_en(instruction_decode_c_0_mem_r_en),
        .mem_w_en(instruction_decode_c_0_mem_w_en),
        .mux_reg(instruction_decode_c_0_mux_reg),
        .pc_out(instruction_decode_c_0_pc_out),
        .r1(instruction_decode_c_0_r1),
        .r2(instruction_decode_c_0_r2),
        .rm(instruction_decode_c_0_rm),
        .rn(instruction_decode_c_0_rn),
        .s_out(instruction_decode_c_0_s_out),
        .shift_op(instruction_decode_c_0_shift_op),
        .signed_imm(instruction_decode_c_0_signed_imm),
        .status({1'b0,1'b0,1'b0,1'b0}),
        .two_src(instruction_decode_c_0_two_src),
        .wb_en(instruction_decode_c_0_wb_en));
  instruction_memory_reg_file_0_0 reg_file_0
       (.clk(Net),
        .inst_dest({1'b0,1'b0,1'b0,1'b0}),
        .inst_rm(instruction_decode_c_0_r2),
        .inst_rn(instruction_decode_c_0_r1),
        .rm_value(reg_file_0_rm_value),
        .rn_value(reg_file_0_rn_value),
        .rst(rst_1),
        .value_to_dest({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .write_enable(xlconstant_4_dout));
  instruction_memory_xlconcat_0_0 xlconcat_0
       (.In0(dist_mem_gen_0_spo),
        .In1(if_comp_top_1_adder_res),
        .dout(xlconcat_0_dout));
  instruction_memory_xlconcat_1_0 xlconcat_1
       (.In0(instruction_decode_c_0_rn),
        .In1(instruction_decode_c_0_rm),
        .In10(instruction_decode_c_0_pc_out),
        .In11(instruction_decode_c_0_imm),
        .In12(instruction_decode_c_0_shift_op),
        .In13(instruction_decode_c_0_signed_imm),
        .In14(instruction_decode_c_0_dest),
        .In15(reg_file_0_rn_value),
        .In16(reg_file_0_rm_value),
        .In2(instruction_decode_c_0_mux_reg),
        .In3(instruction_decode_c_0_two_src),
        .In4(instruction_decode_c_0_wb_en),
        .In5(instruction_decode_c_0_mem_r_en),
        .In6(instruction_decode_c_0_mem_w_en),
        .In7(instruction_decode_c_0_exe_cmd),
        .In8(instruction_decode_c_0_b),
        .In9(instruction_decode_c_0_s_out),
        .dout(xlconcat_1_dout));
  instruction_memory_xlconstant_0_0 xlconstant_0
       (.dout(Net2));
  instruction_memory_xlconstant_0_1 xlconstant_1
       (.dout(freeze_1));
  instruction_memory_xlconstant_0_2 xlconstant_2
       (.dout(xlconstant_2_dout));
  instruction_memory_xlconstant_2_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  instruction_memory_xlconstant_4_0 xlconstant_4
       (.dout(xlconstant_4_dout));
  instruction_memory_xlslice_0_0 xlslice_0
       (.Din(if_comp_top_1_pc_to_im),
=======
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
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6
        .Dout(xlslice_0_Dout));
endmodule
