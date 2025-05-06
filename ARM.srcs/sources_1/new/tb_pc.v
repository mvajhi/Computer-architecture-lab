`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2025 17:00:52
// Design Name: 
// Module Name: tb_pc
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


module tb_pc();
<<<<<<< HEAD
    reg [31:0] branch_address = 0;
    reg branch_taken = 0;
    reg clk = 0;
    reg flush = 0;
    reg freeze = 0;
    reg rst = 1;
    wire [63:0] reg_out;
    
    instruction_memory_wrapper uut(
    branch_address,
    branch_taken,
    clk,
    flush,
    freeze, 
    reg_out, 
    rst);
    
    always #5 clk = ~clk;
    
    initial begin 
    #10 rst = 0;
    end
  

=======

  reg [31:0]branch_address = 0;
  reg branch_taken = 0;
  reg clk = 0;
  reg flush = 0;
  reg freeze = 0;
  reg rst = 1;
  wire [63:0]reg_out;


instruction_memory_wrapper uut
   (
    .branch_address(branch_address),
    .branch_taken(branch_taken),
    .clk(clk),
    .flush(flush),
    .freeze(freeze),
    .reg_out(reg_out),
    .rst(rst)
    );

    always #5 clk = ~clk;

    initial begin
        #10 rst = 0;
    end
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6
endmodule
