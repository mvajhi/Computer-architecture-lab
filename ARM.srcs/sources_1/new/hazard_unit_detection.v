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
    
    // hazard detection logic
    assign hazard_detected = 
        // check if execute stage destination matches any source register and write back is enabled
        ((src1 == exe_dest) && (exe_wb_en == 1'b1)) ||
        ((src2 == exe_dest) && (exe_wb_en == 1'b1) && (two_src == 1'b1)) ||
        // check if memory stage destination matches any source register and write back is enabled
        ((src1 == mem_dest) && (mem_wb_en == 1'b1)) ||
        ((src2 == mem_dest) && (mem_wb_en == 1'b1) && (two_src == 1'b1));
    
endmodule