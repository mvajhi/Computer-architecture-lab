`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2025 18:39:59
// Design Name: 
// Module Name: condition_check
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


module condition_check(
    input [3:0] inst_cond,
    input [3:0] status_reg_out,
    output reg condition_out
    );
    /*
[3] N - Negative  
[2] Z - Zero  
[1] C - Carry  
[0] V - Overflow
    */
    
always @(*) begin
    case(inst_cond) // 
        4'b0000: begin
            condition_out <= status_reg_out[2]; 
        end
        4'b0001: begin
            condition_out <= ~status_reg_out[2]; 
        end
        4'b0010: begin
            condition_out <= status_reg_out[1]; 
        end
        4'b0011: begin
            condition_out <= ~status_reg_out[1]; 
        end
        4'b0100: begin
            condition_out <= status_reg_out[3]; 
        end
        4'b0101:  begin
            condition_out <= ~status_reg_out[3]; 
        end
        4'b0110:  begin
            condition_out <= status_reg_out[0]; 
        end
        4'b0111: begin
            condition_out <= ~status_reg_out[0]; 
        end
        4'b1000: begin
            condition_out <= (status_reg_out[1] && ~status_reg_out[2]); 
        end
        4'b1001: begin
            condition_out <= (~status_reg_out[1] && status_reg_out[2]); 
        end
        4'b1010: begin
            condition_out <= ~(status_reg_out[3] ^ status_reg_out[0]); 
        end
        4'b1011: begin
             condition_out <= (status_reg_out[3] ^ status_reg_out[0]); 
        end
        4'b1100: begin
            condition_out <= (~status_reg_out[2] && ~(status_reg_out[3] ^ status_reg_out[0]));
        end
        4'b1101: begin
            condition_out <= (status_reg_out[2] || (status_reg_out[3] ^ status_reg_out[0]));
        end
        4'b1110: begin
            condition_out <= 1'b1;
        end
        4'b1111: begin
            
        end
        default: begin
        end
    endcase
end
    
    
endmodule
