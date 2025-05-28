module memory(
    input [31:0] address,
    output [9:0] mem_addr_out
);
    assign mem_addr_out = address[9:0];

endmodule