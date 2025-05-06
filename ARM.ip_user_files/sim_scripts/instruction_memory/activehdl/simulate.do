onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+instruction_memory -L xil_defaultlib -L xpm -L xlslice_v1_0_1 -L xlconcat_v2_1_1 -L xlconstant_v1_1_5 -L dist_mem_gen_v8_0_12 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.instruction_memory xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {instruction_memory.udo}

run -all

endsim

quit -force
