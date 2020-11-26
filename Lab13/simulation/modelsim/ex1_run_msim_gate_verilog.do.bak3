transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex1.vo}

vlog -vlog01compat -work work +incdir+D:/1_ASUS/Documents/GitHub/CompArch/Lab13 {D:/1_ASUS/Documents/GitHub/CompArch/Lab13/alu_decoder.v}
vlog -vlog01compat -work work +incdir+D:/1_ASUS/Documents/GitHub/CompArch/Lab13 {D:/1_ASUS/Documents/GitHub/CompArch/Lab13/testbench.v}
vlog -vlog01compat -work work +incdir+D:/1_ASUS/Documents/GitHub/CompArch/Lab13 {D:/1_ASUS/Documents/GitHub/CompArch/Lab13/main_decoder.v}
vlog -vlog01compat -work work +incdir+D:/1_ASUS/Documents/GitHub/CompArch/Lab13 {D:/1_ASUS/Documents/GitHub/CompArch/Lab13/decoder.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

do D:/1_ASUS/Documents/GitHub/CompArch/Lab13/Tcl_script1.tcl
