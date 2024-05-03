vlog -f src_files.list -mfcu +define+SIM +cover
vsim -voptargs=+acc work.top -cover 
add wave *
coverage save fifocoveragereport.ucdb -onexit -du work.top
run -all
coverage report -detail -cvg -directive -comments -output fcover_report.txt /cover_pkg/FIFO_coverage/cg
#quit -sim
#vcover report fifocoveragereport.ucdb -details -annotate -all -output fifocoveragereport.txt
