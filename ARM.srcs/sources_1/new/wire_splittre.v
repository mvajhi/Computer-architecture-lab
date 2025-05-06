`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2025 17:36:13
// Design Name: 
// Module Name: wire_splittre
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module exe_splittre(
    input [159:0] reg_input,
    output [3:0] rn,
    output [3:0] rm,
    output [3:0] mux_reg,
    output two_src,
    output wb_en,
    output mem_r_en,
    output mem_w_en,
    output [3:0] exe_cmd,
    output b,
    output s_out,
    output [31:0] pc_out,
    output imm,
    output [11:0] shift_op,
    output [23:0] signed_imm,
    output [3:0] dest,
    output [31:0] rn_value,
    output [31:0] rm_value,
    output carry_in
    );

    assign rn = reg_input[3:0];
    assign rm = reg_input[7:4];
    assign mux_reg = reg_input[11:8];
    assign two_src = reg_input[12];
    assign wb_en = reg_input[13];
    assign mem_r_en = reg_input[14];
    assign mem_w_en = reg_input[15];
    assign exe_cmd = reg_input[19:16];
    assign b = reg_input[20];
    assign s_out = reg_input[21];
    assign pc_out = reg_input[53:22];
    assign imm = reg_input[54];
    assign shift_op = reg_input[66:55];
    assign signed_imm = reg_input[90:67];
    assign dest = reg_input[94:91];
    assign rn_value = reg_input[126:95];
    assign rm_value = reg_input[158:127];
    assign carry_in = reg_input[159];
endmodule


module ms_splittre(
    input [70:0] reg_input,
    output wb_en,
    output mem_r_en,
    output mem_w_en,
    output [31:0] alu_res,
    output [31:0] rm_value,
    output [3:0] dest
);

    assign wb_en = reg_input[0];
    assign mem_r_en = reg_input[1];
    assign mem_w_en = reg_input[2];
    assign alu_res = reg_input[34:3];
    assign rm_value = reg_input[66:35];
    assign dest = reg_input[70:67];

endmodule

module wbs_splittre(
    input [69:0] reg_input,
    output wb_en,
    output mem_r_en,
    output [31:0] alu_res,
    output [31:0] dm_out,
    output [3:0] dest
);

    assign wb_en = reg_input[0];
    assign mem_r_en = reg_input[1];
    assign alu_res = reg_input[33:2];
    assign dm_out = reg_input[65:34];
    assign dest = reg_input[69:66];

endmodule