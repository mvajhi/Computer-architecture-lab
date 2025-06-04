module hazard_detection_unit(
    input [3:0]src1,
    input [3:0]src2,
    input [3:0] exe_dest,
    input exe_wb_en,
    input [3:0]mem_dest,
    input mem_wb_en,
    input two_src,
    input exe_mem_r_en,
    input fw_en,
    output reg hazard_detected
    );
    reg hazard_from_exe;
    reg hazard_from_mem;

    always @(*) begin
        {hazard_from_exe, hazard_from_mem, hazard_detected} = 3'b0;
        if (fw_en) begin
            hazard_detected = exe_mem_r_en && (
                (src1 == exe_dest) ||
                (two_src && (src2 == exe_dest))
            );
        end else begin
            hazard_from_exe = exe_wb_en && (
                (src1 == exe_dest) ||
                (two_src && (src2 == exe_dest))
            );

            hazard_from_mem = mem_wb_en && (
                (src1 == mem_dest) ||
                (two_src && (src2 == mem_dest))
            );
            hazard_detected = hazard_from_exe || hazard_from_mem;
        end
    end
endmodule

