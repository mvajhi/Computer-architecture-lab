`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2025 18:21:51
// Design Name: 
// Module Name: reg_file
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


module reg_file(
    input clk, rst,
    input [3:0] inst_rn,
    input [3:0] inst_rm,
    input [3:0] inst_dest,
    input [31:0] value_to_dest,
    input write_enable,
    output reg [31:0] rn_value,
    output reg [31:0] rm_value,
    output  [31:0] reg_0,
    output  [31:0] reg_1,
    output  [31:0] reg_2,
    output  [31:0] reg_3,
    output  [31:0] reg_4,
    output  [31:0] reg_5,
    output  [31:0] reg_6,
    output  [31:0] reg_7,
    output  [31:0] reg_8,
    output  [31:0] reg_9,
    output  [31:0] reg_10,
    output  [31:0] reg_11,
    output  [31:0] reg_12,
    output  [31:0] reg_13,
    output  [31:0] reg_14,
    output  [31:0] reg_15


    );
    
reg [31:0] in_memory [0:15];
integer k;

always @ (negedge clk, negedge rst) begin
    if(~rst) begin
        for(k = 0; k < 16; k = k + 1) begin
            in_memory[k] <= 32'b0;
        end
    end
    else if(write_enable) begin
        in_memory[inst_dest] <= value_to_dest;
    end
end

assign reg_0 = in_memory[0];
assign reg_1 = in_memory[1];
assign reg_2 = in_memory[2];
assign reg_3 = in_memory[3];
assign reg_4 = in_memory[4];
assign reg_5 = in_memory[5];
assign reg_6 = in_memory[6];
assign reg_7 = in_memory[7];
assign reg_8 = in_memory[8];
assign reg_9 = in_memory[9];
assign reg_10 = in_memory[10];
assign reg_11 = in_memory[11];
assign reg_12 = in_memory[12];
assign reg_13 = in_memory[13];
assign reg_14 = in_memory[14];
assign reg_15 = in_memory[15];

always @(*) begin
    rn_value <= in_memory[inst_rn];
    rm_value <= in_memory[inst_rm];
end

endmodule
