onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L xlconcat_v2_1_1 -L dist_mem_gen_v8_0_12 -L xlslice_v1_0_1 -L xlconstant_v1_1_5 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.instruction_memory xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {instruction_memory.udo}

run -all

quit -force
