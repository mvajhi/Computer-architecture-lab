vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
<<<<<<< HEAD
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xlslice_v1_0_1
vlib modelsim_lib/msim/xlconcat_v2_1_1
vlib modelsim_lib/msim/xlconstant_v1_1_5
vlib modelsim_lib/msim/dist_mem_gen_v8_0_12

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap xlslice_v1_0_1 modelsim_lib/msim/xlslice_v1_0_1
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5
vmap dist_mem_gen_v8_0_12 modelsim_lib/msim/dist_mem_gen_v8_0_12

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/122e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/7d3c/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/c45e/hdl/verilog" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xlslice_v1_0_1 -64 -incr "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/122e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/7d3c/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/c45e/hdl/verilog" \
"../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/122e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/7d3c/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/c45e/hdl/verilog" \
"../../../bd/instruction_memory/ip/instruction_memory_xlslice_0_0/sim/instruction_memory_xlslice_0_0.v" \
"../../../bd/instruction_memory/ip/instruction_memory_Register_0_1/sim/instruction_memory_Register_0_1.v" \

vlog -work xlconcat_v2_1_1 -64 -incr "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/122e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/7d3c/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/c45e/hdl/verilog" \
"../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/122e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/7d3c/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/c45e/hdl/verilog" \
=======
vlib modelsim_lib/msim/blk_mem_gen_v8_4_2
vlib modelsim_lib/msim/xlslice_v1_0_1
vlib modelsim_lib/msim/xlconcat_v2_1_1

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap blk_mem_gen_v8_4_2 modelsim_lib/msim/blk_mem_gen_v8_4_2
vmap xlslice_v1_0_1 modelsim_lib/msim/xlslice_v1_0_1
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1

vlog -work xil_defaultlib -64 -incr \
"../../../bd/instruction_memory/ip/instruction_memory_if_comp_top_0_0/sim/instruction_memory_if_comp_top_0_0.v" \

vlog -work blk_mem_gen_v8_4_2 -64 -incr \
"../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/instruction_memory/ip/instruction_memory_blk_mem_gen_0_0/sim/instruction_memory_blk_mem_gen_0_0.v" \

vlog -work xlslice_v1_0_1 -64 -incr \
"../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/instruction_memory/ip/instruction_memory_xlslice_0_0/sim/instruction_memory_xlslice_0_0.v" \
"../../../bd/instruction_memory/ip/instruction_memory_Register_0_1/sim/instruction_memory_Register_0_1.v" \

vlog -work xlconcat_v2_1_1 -64 -incr \
"../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6
"../../../bd/instruction_memory/ip/instruction_memory_xlconcat_0_0/sim/instruction_memory_xlconcat_0_0.v" \
"../../../bd/instruction_memory/ip/instruction_memory_Register_1_0/sim/instruction_memory_Register_1_0.v" \
"../../../bd/instruction_memory/sim/instruction_memory.v" \
"../../../bd/instruction_memory/ip/instruction_memory_Register_2_0/sim/instruction_memory_Register_2_0.v" \
"../../../bd/instruction_memory/ip/instruction_memory_Register_2_1/sim/instruction_memory_Register_2_1.v" \
<<<<<<< HEAD
"../../../bd/instruction_memory/ip/instruction_memory_ila_0_1/sim/instruction_memory_ila_0_1.v" \

vlog -work xlconstant_v1_1_5 -64 -incr "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/122e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/7d3c/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/c45e/hdl/verilog" \
"../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/122e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/7d3c/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/c45e/hdl/verilog" \
"../../../bd/instruction_memory/ip/instruction_memory_xlconstant_0_0/sim/instruction_memory_xlconstant_0_0.v" \
"../../../bd/instruction_memory/ip/instruction_memory_debouncer_0_0/sim/instruction_memory_debouncer_0_0.v" \
"../../../bd/instruction_memory/ip/instruction_memory_xlconstant_0_1/sim/instruction_memory_xlconstant_0_1.v" \
"../../../bd/instruction_memory/ip/instruction_memory_xlconstant_0_2/sim/instruction_memory_xlconstant_0_2.v" \
"../../../bd/instruction_memory/ip/instruction_memory_xlconstant_2_0/sim/instruction_memory_xlconstant_2_0.v" \
"../../../bd/instruction_memory/ip/instruction_memory_reg_file_0_0/sim/instruction_memory_reg_file_0_0.v" \
"../../../bd/instruction_memory/ip/instruction_memory_instruction_decode_c_0_2/sim/instruction_memory_instruction_decode_c_0_2.v" \
"../../../bd/instruction_memory/ip/instruction_memory_xlconcat_1_0/sim/instruction_memory_xlconcat_1_0.v" \
"../../../bd/instruction_memory/ip/instruction_memory_xlconstant_4_0/sim/instruction_memory_xlconstant_4_0.v" \

vlog -work dist_mem_gen_v8_0_12 -64 -incr "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/122e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/7d3c/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/c45e/hdl/verilog" \
"../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/122e/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/7d3c/hdl/verilog" "+incdir+../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/c45e/hdl/verilog" \
"../../../bd/instruction_memory/ip/instruction_memory_dist_mem_gen_0_0/sim/instruction_memory_dist_mem_gen_0_0.v" \
"../../../bd/instruction_memory/ip/instruction_memory_if_comp_top_1_0/sim/instruction_memory_if_comp_top_1_0.v" \
=======
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6

vlog -work xil_defaultlib \
"glbl.v"

