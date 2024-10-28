setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/alberto/Lattice/sim/sim.adf"]} { 
	design create sim "C:/Users/alberto/Lattice"
  set newDesign 1
}
design open "C:/Users/alberto/Lattice/sim"
cd "C:/Users/alberto/Lattice"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/alberto/Lattice/PLL.v"
addfile "C:/Users/alberto/Lattice/impl1/source/NCO.v"
addfile "C:/Users/alberto/Lattice/impl1/source/top.v"
vlib "C:/Users/alberto/Lattice/sim/work"
set worklib work
adel -all
vlog -dbg -work work "C:/Users/alberto/Lattice/PLL.v"
vlog -dbg -work work "C:/Users/alberto/Lattice/impl1/source/NCO.v"
vlog -dbg -work work "C:/Users/alberto/Lattice/impl1/source/top.v"
module top
vsim  +access +r top   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
