`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2025 18:22:26
// Design Name: 
// Module Name: status_register
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


module status_reg (
    input clk,
    input rst,
    input s,
    input [3:0] reg_in,
    output reg [3:0] reg_out
);

    always @(negedge clk, negedge rst) begin
        if (~rst) begin
            reg_out <= 4'b1110;
//            reg_out <= 4'b1110;
        end else if (s) begin
            reg_out <= reg_in;
//            reg_out <= 4'b1110;
        end
    end

endmodule
