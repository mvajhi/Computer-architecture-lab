onbreak {quit -f}
onerror {quit -f}

<<<<<<< HEAD
vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L xlslice_v1_0_1 -L xlconcat_v2_1_1 -L xlconstant_v1_1_5 -L dist_mem_gen_v8_0_12 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.instruction_memory xil_defaultlib.glbl
=======
vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L blk_mem_gen_v8_4_2 -L xlslice_v1_0_1 -L xlconcat_v2_1_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.instruction_memory xil_defaultlib.glbl
>>>>>>> 268e6318d9596da5fb388eb1d1158dd18f6a50e6

do {wave.do}

view wave
view structure
view signals

do {instruction_memory.udo}

run -all

quit -force
