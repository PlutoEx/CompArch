transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex2.vo}

vlog -vlog01compat -work work +incdir+D:/1_ASUS/Desktop/Lab10/ex2 {D:/1_ASUS/Desktop/Lab10/ex2/ex2.v}
vlog -vlog01compat -work work +incdir+D:/1_ASUS/Desktop/Lab10/ex2 {D:/1_ASUS/Desktop/Lab10/ex2/testbench.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

do D:/1_ASUS/Desktop/Lab10/ex2/Tcl_script1.tcl
