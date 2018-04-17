add wave -r sim:/mult/*
force -freeze sim:/mult/clk 1 0, 0 {50 ns} -r 100
force reset 1
force start 0
force a_in 10#10
force b_in 10#5
run 100
run 50
force reset 0
run 50
run 100
force start 1
run 100
force start 0
run 10500
