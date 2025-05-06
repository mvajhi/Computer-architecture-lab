`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2025 16:08:26
// Design Name: 
// Module Name: Register
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


module Register #(parameter size=32)(
    input clk,
    input rst,
    input flush,
    input freeze,
    input [size-1:0] reg_in,
    output reg [size-1:0] reg_out
    );
    always @(posedge clk, negedge rst)begin
        if(~rst) begin
            reg_out <= 32'b0;
        end
        else if(flush) begin
            reg_out <= 32'b0;
        end
        else if(~freeze) begin
            reg_out <= reg_in;
        end
    end
endmodule
