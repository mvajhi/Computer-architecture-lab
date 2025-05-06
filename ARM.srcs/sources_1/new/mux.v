`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2025 18:54:43
// Design Name: 
// Module Name: mux
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


module mux(
    input [31:0] alu_out,
    input [31:0] dm_out,
    input enabler,
    output [31:0] wb_out
    );
    assign wb_out = enabler ? dm_out : alu_out;
endmodule
