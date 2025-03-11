onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+instruction_memory -L xil_defaultlib -L blk_mem_gen_v8_4_2 -L xlslice_v1_0_1 -L xlconcat_v2_1_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.instruction_memory xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {instruction_memory.udo}

run -all

endsim

quit -force
