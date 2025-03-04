module mux2to1(
    input [31:0] next_pc,
    input [31:0] branch_address,
    input branch_taken,
    output [31:0] pc
};
    assign pc = branch_taken ? branch_address : next_pc;    
endmodule

module pc_register(
    input clk, rst, 
    input [31:0] pc_in,
    input freeze,
    output [31:0] pc_out
);
    always @(posedge clk) begin
        if(rst)
            pc_out <= 32'b0;
        else if(~freeze)
            pc_out <= pc_in; 
    end
endmodule

module adder(
    input [31:0] a, 
    input [31:0] b,
    output [31:0] out
);
    assign out = a + b;
endmodule

module if_comp_top(
    input clk, rst,
    input freeze,
    input branch_taken,
    input [31:0] branch_address,
    output [31:0] adder_res,
    output [31:0] pc_to_im
);
    wire [31:0] mux_to_pc;
    wire [31:0] next_pc;
    mux2to1 if_init_mux(next_pc, 32'b0, branch_taken, mux_to_pc);
    
    wire [31:0] pc_to_adder;
    pc_register pcreg(clk, rst, mux_to_pc, freeze, pc_to_adder);
    
    assign pc_to_im[31:0] = pc_to_adder[31:0]
    
    adder pc_adder(pc_to_adder, 1, next_pc);
    
endmodule
