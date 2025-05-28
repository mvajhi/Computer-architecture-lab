`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2025 17:04:41
// Design Name: 
// Module Name: control_unit
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


module control_unit(
    input [31:0] instruction,
//    input [3:0] opcode,
//    input [1:0] mode,
//    input s_in,
    output reg [8:0] cu_out
    );
    
    wire [3:0] opcode = instruction[24:21];
    wire [1:0] mode = instruction[27:26];
    wire s_in = instruction[20];
always @(*) begin
    cu_out = 9'b0;
    cu_out[0] = (mode == 2'b10 ? 1'b0 : s_in);
    cu_out[1] = mode[1] & ~mode[0];
    cu_out[6] = (~mode[1] & mode[0]) & ~s_in;
    cu_out[7] = (~mode[1] & mode[0]) & s_in;
    cu_out[8] = (~mode[1] & ~mode[0] & (opcode != 4'b1000 & opcode != 4'b1010)) | (~mode[1] & mode[0] & s_in);
    if(~mode[1] & ~mode[0]) begin
            case(opcode)
            4'b1101: begin
                cu_out[5:2] = 4'b0001;
            end
            4'b1111: begin
                cu_out[5:2] = 4'b1001;
            end
            4'b0100: begin
                cu_out[5:2] = 4'b0010;
            end
            4'b0101: begin
                cu_out[5:2] = 4'b0011;
            end
            4'b0010: begin
                cu_out[5:2] = 4'b0100;
            end
            4'b0110: begin
                cu_out[5:2] = 4'b0101;
            end
            4'b0000: begin
                cu_out[5:2] = 4'b0110;
            end
            4'b1100: begin
                cu_out[5:2] = 4'b0111;
            end
            4'b0001: begin
                cu_out[5:2] = 4'b1000;
            end
            4'b1010: begin
                cu_out[5:2] = 4'b0100;
            end
            4'b1000: begin
                cu_out[5:2] = 4'b0110;
            end
        endcase 
    end else begin
        cu_out[5:2] = 4'b0010;
    end
end
endmodule
