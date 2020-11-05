transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex1.vo}

vlog -vlog01compat -work work +incdir+D:/1_ASUS/Desktop/Lab10/ex1 {D:/1_ASUS/Desktop/Lab10/ex1/ex1.v}
vlog -vlog01compat -work work +incdir+D:/1_ASUS/Desktop/Lab10/ex1 {D:/1_ASUS/Desktop/Lab10/ex1/testbench.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
