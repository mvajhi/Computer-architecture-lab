`timescale 1ns / 1ns
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
    reg clk = 1'b1, rst = 1'b1, hazard = 1'b0;
    reg [3:0] status = 4'b0000;
    instruction_memory_wrapper uut(.clk(clk), .rst(rst), .status(status), .hazard(hazard));
    always #50 clk = ~clk;
    initial begin
        rst = 1'b0;
        #500
        rst = 1'b1;
        #500000
        $stop;
    end

endmodule
