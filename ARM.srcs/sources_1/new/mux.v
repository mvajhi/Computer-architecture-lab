module mux (
    input [31:0] a,
    input [31:0] b,
    input sel,
    output reg [31:0] out
);
    always @(*) begin
        case (sel)
            1'b0: out = a;
            1'b1: out = b;
            default: out = 32'b0; 
        endcase
    end
endmodule