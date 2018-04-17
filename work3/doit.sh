#!/bin/bash

if [! -d "work3" ]
then 
echo "work2 doesnot exist, making it"
	vlib work3
	sh comp_lib
fi

if [ -s "alu.sv" ] 
then 
	echo "compiling alu.sv"
	vlog -novopt alu.sv
fi


if [ -s "syn_alu" ] 
then 
	design_vision-xg -f syn_alu
fi

if [ -s "wave.do" ] 
then 
	vsim -novopt alu -do wave.do
fi

if [ -s "alu.do" ] 
then 
	vsim -novopt alu -do alu.do
fi

if [ ! -s "work/_info" ]
then

	#set location of synthesis library
	synop_lib="/nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog"

	echo "***** Compile synthesis library into work *****"
	vlog $synop_lib/*  -work work
fi
	
