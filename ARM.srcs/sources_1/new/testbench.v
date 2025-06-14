`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2025 18:54:19
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg clk = 1'b1, rst = 1'b1;
    reg [3:0] status = 4'b0000;
    instruction_memory_wrapper uut(.clk(clk), .rst(rst));
    always #50 clk = ~clk;
    initial begin
        rst = 1'b0;
        #300
        rst = 1'b1;
        #40000
        $stop;
    end

endmodule
