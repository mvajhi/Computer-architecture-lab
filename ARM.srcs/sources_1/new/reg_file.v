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
    output reg [31:0] rm_value
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

always @(*) begin
    rn_value <= in_memory[inst_rn];
    rm_value <= in_memory[inst_rm];
end

endmodule
