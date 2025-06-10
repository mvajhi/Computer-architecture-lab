module forward_unit_detection(
    input [3:0]src1_exe,
    input [3:0]src2_exe,
    input [3:0] mem_dest,
    input mem_wb_en,
    input [3:0] wb_dest,
    input wb_wb_en,
    input fw_en,
    output reg [1:0]sel_src1,
    output reg [1:0]sel_src2
    );
    
    always @(*) begin
        sel_src1 = 2'b00;
        if (fw_en) begin
            if (mem_wb_en && src1_exe == mem_dest) begin
                sel_src1 = 2'b01;
            end else if (wb_wb_en && src1_exe == wb_dest) begin
                sel_src1 = 2'b10;
            end
        end
    end

    always @(*) begin
        sel_src2 = 2'b00;
        if (fw_en) begin
            if (mem_wb_en && src2_exe == mem_dest) begin
                sel_src2 = 2'b01;
            end else if (wb_wb_en && src2_exe == wb_dest) begin
                sel_src2 = 2'b10;
            end
        end
    end
endmodule