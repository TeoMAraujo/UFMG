transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Aluno/Downloads/TP/Structural/Components/reg_8bit/reg_8bit.vhd}
vcom -93 -work work {C:/Users/Aluno/Downloads/TP/Structural/Components/Mux_2x1/Mux_2x1.vhd}
vcom -93 -work work {C:/Users/Aluno/Downloads/TP/Structural/Components/Demux_1x2/Demux_1x2.vhd}
vcom -93 -work work {C:/Users/Aluno/Downloads/TP/Structural/Components/comparator/comparator.vhd}
vcom -93 -work work {C:/Users/Aluno/Downloads/TP/Structural/Components/ALU/ALU.vhd}
vcom -93 -work work {C:/Users/Aluno/Downloads/TP/Structural/Components/D_flip_flop/D_flip_flop.vhd}
vcom -93 -work work {C:/Users/Aluno/Downloads/TP/Structural/barramento/barramento.vhd}
vcom -93 -work work {C:/Users/Aluno/Downloads/TP/Structural/arithmetic_control/arithmetic_control.vhd}
vcom -93 -work work {C:/Users/Aluno/Downloads/TP/Structural/CPU/CPU.vhd}

vcom -93 -work work {C:/Users/Aluno/Downloads/TP/Structural/CPU/tb_CPU.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_CPU.vhd

add wave *
view structure
view signals
run -all
