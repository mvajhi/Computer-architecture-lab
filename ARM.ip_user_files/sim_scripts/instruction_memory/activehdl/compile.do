vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/blk_mem_gen_v8_4_2
vlib activehdl/xlslice_v1_0_1
vlib activehdl/xlconcat_v2_1_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap blk_mem_gen_v8_4_2 activehdl/blk_mem_gen_v8_4_2
vmap xlslice_v1_0_1 activehdl/xlslice_v1_0_1
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/instruction_memory/ip/instruction_memory_if_comp_top_0_0/sim/instruction_memory_if_comp_top_0_0.v" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 \
"../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/instruction_memory/ip/instruction_memory_blk_mem_gen_0_0/sim/instruction_memory_blk_mem_gen_0_0.v" \

vlog -work xlslice_v1_0_1  -v2k5 \
"../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/instruction_memory/ip/instruction_memory_xlslice_0_0/sim/instruction_memory_xlslice_0_0.v" \
"../../../bd/instruction_memory/ip/instruction_memory_Register_0_1/sim/instruction_memory_Register_0_1.v" \

vlog -work xlconcat_v2_1_1  -v2k5 \
"../../../../ARM.srcs/sources_1/bd/instruction_memory/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/instruction_memory/ip/instruction_memory_xlconcat_0_0/sim/instruction_memory_xlconcat_0_0.v" \
"../../../bd/instruction_memory/ip/instruction_memory_Register_1_0/sim/instruction_memory_Register_1_0.v" \
"../../../bd/instruction_memory/sim/instruction_memory.v" \
"../../../bd/instruction_memory/ip/instruction_memory_Register_2_0/sim/instruction_memory_Register_2_0.v" \
"../../../bd/instruction_memory/ip/instruction_memory_Register_2_1/sim/instruction_memory_Register_2_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

