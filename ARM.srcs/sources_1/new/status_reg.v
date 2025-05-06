module status_reg (
    input clk,
    input rst,
    input s,
    input [3:0] reg_in,
    output reg [3:0] reg_out
);

    always @(posedge clk) begin
        if (rst) begin
            reg_out <= 4'b0;
        end else if (s) begin
            reg_out <= reg_in;
        end
    end

endmodule