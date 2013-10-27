restart -nowave -force
add wave -radix unsigned *

force d 10#9 0 

force s 00 0
run
force s 01 0
run
force s 10 0
run
force s 11 0
run 
