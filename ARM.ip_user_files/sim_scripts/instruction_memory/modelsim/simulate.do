onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L blk_mem_gen_v8_4_2 -L xlslice_v1_0_1 -L xlconcat_v2_1_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.instruction_memory xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {instruction_memory.udo}

run -all

quit -force
