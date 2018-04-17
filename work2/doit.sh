#!/bin/bash

if [! -d "work2" ]
then 
echo "work2 doesnot exist, making it"
	vlib work2
	sh comp_lib
fi

if [ -s "mult3_ctl.sv" ] 
then 
	echo "compiling mult3_ctl.sv"
	vlog -novopt mult3_ctl.sv
fi

if [ -s "mult.sv" ]
then 
	echo  "compiling mult.sv"
	vlog -novopt mult.sv
fi

if [ -s "syn_mult" ] 
then 
	design_vision-xg -f syn_mult
fi

if [ -s "mult.do" ] 
then 
	vsim -novopt mult -do mult.do
fi

if [ ! -s "work/_info" ]
then

	#set location of synthesis library
	synop_lib="/nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog"

	echo "***** Compile synthesis library into work *****"
	vlog $synop_lib/*  -work work
fi
	
