transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Aluno/Downloads/TP/Structural/Components/reg_8bit/reg_8bit.vhd}

vcom -93 -work work {C:/Users/Aluno/Downloads/TP/Structural/Components/reg_8bit/tb_reg_8bit.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_reg_8bit.vhd

add wave *
view structure
view signals
run -all
