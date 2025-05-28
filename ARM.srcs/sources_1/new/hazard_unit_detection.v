module hazard_detection_unit(
    input [3:0]src1,
    input [3:0]src2,
    input [3:0] exe_dest,
    input exe_wb_en,
    input [3:0]mem_dest,
    input mem_wb_en,
    input two_src,
    output hazard_detected
    );
    
    wire hazard_from_exe;
    wire hazard_from_mem;

    assign hazard_from_exe = exe_wb_en && (
        (src1 == exe_dest) ||
        (two_src && (src2 == exe_dest))
    );

    assign hazard_from_mem = mem_wb_en && (
        (src1 == mem_dest) ||
        (two_src && (src2 == mem_dest))
    );

    assign hazard_detected = hazard_from_exe || hazard_from_mem;
endmodule