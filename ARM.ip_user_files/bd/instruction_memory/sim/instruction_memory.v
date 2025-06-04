//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Jun  3 16:25:36 2025
//Host        : DESKTOP-H8247UF running 64-bit major release  (build 9200)
//Command     : generate_target instruction_memory.bd
//Design      : instruction_memory
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "instruction_memory,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=instruction_memory,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=29,numReposBlks=29,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=17,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=5,synth_mode=OOC_per_BD}" *) (* HW_HANDOFF = "instruction_memory.hwdef" *) 
module instruction_memory
   (clk,
    rst);
  input clk;
  input [0:0]rst;

  wire Net;
  wire [63:0]Register_1_reg_out;
  wire [159:0]Register_2_reg_out;
  wire [70:0]Register_3_reg_out;
  wire [69:0]Register_4_reg_out;
  wire [0:0]debouncer_0_SIGNAL_O;
  wire [31:0]dist_mem_gen_0_spo;
  wire [31:0]dist_mem_gen_1_spo;
  wire exe_splittre_0_b;
  wire exe_splittre_0_carry_in;
  wire [3:0]exe_splittre_0_dest;
  wire [3:0]exe_splittre_0_exe_cmd;
  wire exe_splittre_0_imm;
  wire exe_splittre_0_mem_r_en;
  wire exe_splittre_0_mem_w_en;
  wire [31:0]exe_splittre_0_pc_out;
  wire [3:0]exe_splittre_0_rm;
  wire [31:0]exe_splittre_0_rm_value;
  wire [3:0]exe_splittre_0_rn;
  wire [31:0]exe_splittre_0_rn_value;
  wire exe_splittre_0_s_out;
  wire [11:0]exe_splittre_0_shift_op;
  wire [23:0]exe_splittre_0_signed_imm;
  wire exe_splittre_0_wb_en;
  wire [31:0]exe_stage_0_alu_result;
  wire [31:0]exe_stage_0_br_addr;
  wire [3:0]exe_stage_0_status;
  wire [1:0]forward_unit_detecti_0_sel_src1;
  wire [1:0]forward_unit_detecti_0_sel_src2;
  wire hazard_detection_unit_0_hazard_detected;
  wire [31:0]if_comp_top_1_adder_res;
  wire [31:0]if_comp_top_1_pc_to_im;
  wire instruction_decode_c_0_b;
  wire instruction_decode_c_0_carry_in;
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
  wire [9:0]memory_0_mem_addr_out;
  wire [31:0]ms_splittre_0_alu_res;
  wire [3:0]ms_splittre_0_dest;
  wire ms_splittre_0_mem_r_en;
  wire ms_splittre_0_mem_w_en;
  wire [31:0]ms_splittre_0_rm_value;
  wire ms_splittre_0_wb_en;
  wire [31:0]mux_0_wb_out;
  wire [31:0]reg_file_0_reg_0;
  wire [31:0]reg_file_0_reg_1;
  wire [31:0]reg_file_0_reg_2;
  wire [31:0]reg_file_0_reg_3;
  wire [31:0]reg_file_0_reg_4;
  wire [31:0]reg_file_0_reg_5;
  wire [31:0]reg_file_0_rm_value;
  wire [31:0]reg_file_0_rn_value;
  wire [0:0]rst_1;
  wire [3:0]status_reg_0_reg_out;
  wire [31:0]wbs_splittre_0_alu_res;
  wire [3:0]wbs_splittre_0_dest;
  wire [31:0]wbs_splittre_0_dm_out;
  wire wbs_splittre_0_mem_r_en;
  wire wbs_splittre_0_wb_en;
  wire [63:0]xlconcat_0_dout;
  wire [159:0]xlconcat_1_dout;
  wire [70:0]xlconcat_2_dout;
  wire [69:0]xlconcat_3_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;
  wire [0:0]xlconstant_3_dout;
  wire [12:0]xlslice_0_Dout;

  assign Net = clk;
  assign rst_1 = rst[0];
  instruction_memory_Register_1_1 Register_1
       (.clk(Net),
        .flush(exe_splittre_0_b),
        .freeze(hazard_detection_unit_0_hazard_detected),
        .reg_in(xlconcat_0_dout),
        .reg_out(Register_1_reg_out),
        .rst(debouncer_0_SIGNAL_O));
  instruction_memory_Register_1_0 Register_2
       (.clk(Net),
        .flush(exe_splittre_0_b),
        .freeze(xlconstant_3_dout),
        .reg_in(xlconcat_1_dout),
        .reg_out(Register_2_reg_out),
        .rst(debouncer_0_SIGNAL_O));
  instruction_memory_Register_2_0 Register_3
       (.clk(Net),
        .flush(xlconstant_0_dout),
        .freeze(xlconstant_0_dout),
        .reg_in(xlconcat_2_dout),
        .reg_out(Register_3_reg_out),
        .rst(debouncer_0_SIGNAL_O));
  instruction_memory_Register_4_0 Register_4
       (.clk(Net),
        .flush(xlconstant_1_dout),
        .freeze(xlconstant_1_dout),
        .reg_in(xlconcat_3_dout),
        .reg_out(Register_4_reg_out),
        .rst(debouncer_0_SIGNAL_O));
  instruction_memory_debouncer_0_0 debouncer_0
       (.CLK_I(Net),
        .SIGNAL_I(rst_1),
        .SIGNAL_O(debouncer_0_SIGNAL_O));
  instruction_memory_dist_mem_gen_0_0 dist_mem_gen_0
       (.a(xlslice_0_Dout),
        .spo(dist_mem_gen_0_spo));
  instruction_memory_dist_mem_gen_1_0 dist_mem_gen_1
       (.a(memory_0_mem_addr_out),
        .clk(Net),
        .d(ms_splittre_0_rm_value),
        .spo(dist_mem_gen_1_spo),
        .we(ms_splittre_0_mem_w_en));
  instruction_memory_exe_splittre_0_1 exe_splittre_0
       (.b(exe_splittre_0_b),
        .carry_in(exe_splittre_0_carry_in),
        .dest(exe_splittre_0_dest),
        .exe_cmd(exe_splittre_0_exe_cmd),
        .imm(exe_splittre_0_imm),
        .mem_r_en(exe_splittre_0_mem_r_en),
        .mem_w_en(exe_splittre_0_mem_w_en),
        .pc_out(exe_splittre_0_pc_out),
        .reg_input(Register_2_reg_out),
        .rm(exe_splittre_0_rm),
        .rm_value(exe_splittre_0_rm_value),
        .rn(exe_splittre_0_rn),
        .rn_value(exe_splittre_0_rn_value),
        .s_out(exe_splittre_0_s_out),
        .shift_op(exe_splittre_0_shift_op),
        .signed_imm(exe_splittre_0_signed_imm),
        .wb_en(exe_splittre_0_wb_en));
  instruction_memory_exe_stage_0_0 exe_stage_0
       (.alu_result(exe_stage_0_alu_result),
        .br_addr(exe_stage_0_br_addr),
        .carry_in(exe_splittre_0_carry_in),
        .clk(Net),
        .exe_cmd(exe_splittre_0_exe_cmd),
        .imm(exe_splittre_0_imm),
        .mem_r_en(exe_splittre_0_mem_r_en),
        .mem_w_en(exe_splittre_0_mem_w_en),
        .pc(exe_splittre_0_pc_out),
        .sel_src1(forward_unit_detecti_0_sel_src1),
        .sel_src2(forward_unit_detecti_0_sel_src2),
        .shift_operand(exe_splittre_0_shift_op),
        .signed_imm_24(exe_splittre_0_signed_imm),
        .status(exe_stage_0_status),
        .val_forward_mem(ms_splittre_0_alu_res),
        .val_forward_wb(mux_0_wb_out),
        .val_rm(exe_splittre_0_rm_value),
        .val_rn(exe_splittre_0_rn_value));
  instruction_memory_forward_unit_detecti_0_0 forward_unit_detecti_0
       (.fw_en(xlconstant_2_dout),
        .mem_dest(ms_splittre_0_dest),
        .mem_wb_en(ms_splittre_0_wb_en),
        .sel_src1(forward_unit_detecti_0_sel_src1),
        .sel_src2(forward_unit_detecti_0_sel_src2),
        .src1_exe(exe_splittre_0_rn),
        .src2_exe(exe_splittre_0_rm),
        .wb_dest(wbs_splittre_0_dest),
        .wb_wb_en(wbs_splittre_0_wb_en));
  instruction_memory_hazard_detection_unit_0_0 hazard_detection_unit_0
       (.exe_dest(exe_splittre_0_dest),
        .exe_mem_r_en(exe_splittre_0_mem_r_en),
        .exe_wb_en(exe_splittre_0_wb_en),
        .fw_en(xlconstant_2_dout),
        .hazard_detected(hazard_detection_unit_0_hazard_detected),
        .mem_dest(ms_splittre_0_dest),
        .mem_wb_en(ms_splittre_0_wb_en),
        .src1(instruction_decode_c_0_rn),
        .src2(instruction_decode_c_0_rm),
        .two_src(instruction_decode_c_0_two_src));
  instruction_memory_if_comp_top_1_0 if_comp_top_1
       (.adder_res(if_comp_top_1_adder_res),
        .branch_address(exe_stage_0_br_addr),
        .branch_taken(exe_splittre_0_b),
        .clk(Net),
        .freeze(hazard_detection_unit_0_hazard_detected),
        .pc_to_im(if_comp_top_1_pc_to_im),
        .rst(debouncer_0_SIGNAL_O));
  instruction_memory_ila_0_1 ila_0
       (.clk(Net),
        .probe0(debouncer_0_SIGNAL_O),
        .probe1(reg_file_0_reg_0),
        .probe2(reg_file_0_reg_1),
        .probe3(reg_file_0_reg_2),
        .probe4(reg_file_0_reg_3),
        .probe5(reg_file_0_reg_4),
        .probe6(reg_file_0_reg_5));
  instruction_memory_instruction_decode_c_0_2 instruction_decode_c_0
       (.b(instruction_decode_c_0_b),
        .carry_in(instruction_decode_c_0_carry_in),
        .dest(instruction_decode_c_0_dest),
        .exe_cmd(instruction_decode_c_0_exe_cmd),
        .hazard(hazard_detection_unit_0_hazard_detected),
        .if_out(Register_1_reg_out),
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
        .status(status_reg_0_reg_out),
        .two_src(instruction_decode_c_0_two_src),
        .wb_en(instruction_decode_c_0_wb_en));
  instruction_memory_memory_0_1 memory_0
       (.address(ms_splittre_0_alu_res),
        .mem_addr_out(memory_0_mem_addr_out));
  instruction_memory_ms_splittre_0_0 ms_splittre_0
       (.alu_res(ms_splittre_0_alu_res),
        .dest(ms_splittre_0_dest),
        .mem_r_en(ms_splittre_0_mem_r_en),
        .mem_w_en(ms_splittre_0_mem_w_en),
        .reg_input(Register_3_reg_out),
        .rm_value(ms_splittre_0_rm_value),
        .wb_en(ms_splittre_0_wb_en));
  instruction_memory_mux_0_0 mux_0
       (.alu_out(wbs_splittre_0_alu_res),
        .dm_out(wbs_splittre_0_dm_out),
        .enabler(wbs_splittre_0_mem_r_en),
        .wb_out(mux_0_wb_out));
  instruction_memory_reg_file_0_0 reg_file_0
       (.clk(Net),
        .inst_dest(wbs_splittre_0_dest),
        .inst_rm(instruction_decode_c_0_r2),
        .inst_rn(instruction_decode_c_0_r1),
        .reg_0(reg_file_0_reg_0),
        .reg_1(reg_file_0_reg_1),
        .reg_2(reg_file_0_reg_2),
        .reg_3(reg_file_0_reg_3),
        .reg_4(reg_file_0_reg_4),
        .reg_5(reg_file_0_reg_5),
        .rm_value(reg_file_0_rm_value),
        .rn_value(reg_file_0_rn_value),
        .rst(debouncer_0_SIGNAL_O),
        .value_to_dest(mux_0_wb_out),
        .write_enable(wbs_splittre_0_wb_en));
  instruction_memory_status_reg_0_0 status_reg_0
       (.clk(Net),
        .reg_in(exe_stage_0_status),
        .reg_out(status_reg_0_reg_out),
        .rst(debouncer_0_SIGNAL_O),
        .s(exe_splittre_0_s_out));
  instruction_memory_vio_0_0 vio_0
       (.clk(Net),
        .probe_out0(xlconstant_2_dout));
  instruction_memory_wbs_splittre_0_0 wbs_splittre_0
       (.alu_res(wbs_splittre_0_alu_res),
        .dest(wbs_splittre_0_dest),
        .dm_out(wbs_splittre_0_dm_out),
        .mem_r_en(wbs_splittre_0_mem_r_en),
        .reg_input(Register_4_reg_out),
        .wb_en(wbs_splittre_0_wb_en));
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
        .In17(instruction_decode_c_0_carry_in),
        .In2(instruction_decode_c_0_mux_reg),
        .In3(instruction_decode_c_0_two_src),
        .In4(instruction_decode_c_0_wb_en),
        .In5(instruction_decode_c_0_mem_r_en),
        .In6(instruction_decode_c_0_mem_w_en),
        .In7(instruction_decode_c_0_exe_cmd),
        .In8(instruction_decode_c_0_b),
        .In9(instruction_decode_c_0_s_out),
        .dout(xlconcat_1_dout));
  instruction_memory_xlconcat_2_0 xlconcat_2
       (.In0(exe_splittre_0_wb_en),
        .In1(exe_splittre_0_mem_r_en),
        .In2(exe_splittre_0_mem_w_en),
        .In3(exe_stage_0_alu_result),
        .In4(exe_splittre_0_rm_value),
        .In5(exe_splittre_0_dest),
        .dout(xlconcat_2_dout));
  instruction_memory_xlconcat_2_1 xlconcat_3
       (.In0(ms_splittre_0_wb_en),
        .In1(ms_splittre_0_mem_r_en),
        .In2(ms_splittre_0_alu_res),
        .In3(dist_mem_gen_1_spo),
        .In4(ms_splittre_0_dest),
        .dout(xlconcat_3_dout));
  instruction_memory_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  instruction_memory_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  instruction_memory_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  instruction_memory_xlslice_0_0 xlslice_0
       (.Din(if_comp_top_1_pc_to_im),
        .Dout(xlslice_0_Dout));
endmodule
