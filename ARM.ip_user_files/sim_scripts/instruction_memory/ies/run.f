-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/instruction_memory/ip/instruction_memory_Register_1_0/sim/instruction_memory_Register_1_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_Register_2_0/sim/instruction_memory_Register_2_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_ila_0_1/sim/instruction_memory_ila_0_1.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_reg_file_0_0/sim/instruction_memory_reg_file_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_instruction_decode_c_0_2/sim/instruction_memory_instruction_decode_c_0_2.v" \
-endlib
-makelib ies_lib/xlconcat_v2_1_1 \
  "../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconcat_1_0/sim/instruction_memory_xlconcat_1_0.v" \
-endlib
-makelib ies_lib/dist_mem_gen_v8_0_12 \
  "../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/instruction_memory/ip/instruction_memory_dist_mem_gen_0_0/sim/instruction_memory_dist_mem_gen_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_exe_stage_0_0/sim/instruction_memory_exe_stage_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconcat_2_0/sim/instruction_memory_xlconcat_2_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_exe_splittre_0_1/sim/instruction_memory_exe_splittre_0_1.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_ms_splittre_0_0/sim/instruction_memory_ms_splittre_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_wbs_splittre_0_0/sim/instruction_memory_wbs_splittre_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_status_reg_0_0/sim/instruction_memory_status_reg_0_0.v" \
-endlib
-makelib ies_lib/xlslice_v1_0_1 \
  "../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/instruction_memory/ip/instruction_memory_xlslice_0_0_1/sim/instruction_memory_xlslice_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconcat_0_0_1/sim/instruction_memory_xlconcat_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_Register_1_1/sim/instruction_memory_Register_1_1.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_Register_4_0/sim/instruction_memory_Register_4_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_if_comp_top_1_0_1/sim/instruction_memory_if_comp_top_1_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_hazard_detection_unit_0_0/sim/instruction_memory_hazard_detection_unit_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_mux_0_0/sim/instruction_memory_mux_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconcat_2_1/sim/instruction_memory_xlconcat_2_1.v" \
  "../../../bd/instruction_memory/sim/instruction_memory.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_5 \
  "../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconstant_0_0/sim/instruction_memory_xlconstant_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconstant_0_1/sim/instruction_memory_xlconstant_0_1.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_dist_mem_gen_1_0/sim/instruction_memory_dist_mem_gen_1_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_memory_0_1/sim/instruction_memory_memory_0_1.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconstant_3_0/sim/instruction_memory_xlconstant_3_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

