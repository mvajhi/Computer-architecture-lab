module memory(
    input clk, memread, memwrite,
    input [31:0] address, data,
    output [31:0] mem_result
);
// module implementation goes here
    reg [31:0] memory [0:64]; // 1KB memory
    initial begin
        $readmemh("data_memory.txt", memory);
    end

    always @(posedge clk) begin
        if (memwrite) begin
            memory[address[11:2]] <= data;
        end
    end

    assign mem_result = memread ? memory[address[11:2]] : 32'bz;
endmodule
