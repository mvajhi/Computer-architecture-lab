<<<<<<< HEAD
-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
=======
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/instruction_memory/ip/instruction_memory_if_comp_top_0_0/sim/instruction_memory_if_comp_top_0_0.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/instruction_memory/ip/instruction_memory_blk_mem_gen_0_0/sim/instruction_memory_blk_mem_gen_0_0.v" \
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6
-endlib
-makelib xcelium_lib/xlslice_v1_0_1 \
  "../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/instruction_memory/ip/instruction_memory_xlslice_0_0/sim/instruction_memory_xlslice_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_Register_0_1/sim/instruction_memory_Register_0_1.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_1 \
  "../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconcat_0_0/sim/instruction_memory_xlconcat_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_Register_1_0/sim/instruction_memory_Register_1_0.v" \
  "../../../bd/instruction_memory/sim/instruction_memory.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_Register_2_0/sim/instruction_memory_Register_2_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_Register_2_1/sim/instruction_memory_Register_2_1.v" \
<<<<<<< HEAD
  "../../../bd/instruction_memory/ip/instruction_memory_ila_0_1/sim/instruction_memory_ila_0_1.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_5 \
  "../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconstant_0_0/sim/instruction_memory_xlconstant_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_debouncer_0_0/sim/instruction_memory_debouncer_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconstant_0_1/sim/instruction_memory_xlconstant_0_1.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconstant_0_2/sim/instruction_memory_xlconstant_0_2.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconstant_2_0/sim/instruction_memory_xlconstant_2_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_reg_file_0_0/sim/instruction_memory_reg_file_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_instruction_decode_c_0_2/sim/instruction_memory_instruction_decode_c_0_2.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconcat_1_0/sim/instruction_memory_xlconcat_1_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_xlconstant_4_0/sim/instruction_memory_xlconstant_4_0.v" \
-endlib
-makelib xcelium_lib/dist_mem_gen_v8_0_12 \
  "../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/instruction_memory/ip/instruction_memory_dist_mem_gen_0_0/sim/instruction_memory_dist_mem_gen_0_0.v" \
  "../../../bd/instruction_memory/ip/instruction_memory_if_comp_top_1_0/sim/instruction_memory_if_comp_top_1_0.v" \
=======
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

