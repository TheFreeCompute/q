#!/bin/bash
cores=`sysctl hw.ncpu | sed 's|.* ||'`
#2-1
if [ "${cores}" = 2 ]; then
	echo '1' &> ~/.cpu;
fi
#4-2
if [ "${cores}" = 4 ]; then
	echo '2' &> ~/.cpu;
fi
#6-3
if [ "${cores}" = 6 ]; then
	echo '3' &> ~/.cpu;
fi
#8-4
if [ "${cores}" = 8 ]; then
	echo '4' &> ~/.cpu;
fi
#10-5
if [ "${cores}" = 10 ]; then
	echo '5' &> ~/.cpu;
fi
#12-6
if [ "${cores}" = 12 ]; then
	echo '6' &> ~/.cpu;
fi
#14-7
if [ "${cores}" = 14 ]; then
	echo '7' &> ~/.cpu;
fi
#16-8
if [ "${cores}" = 16 ]; then
	echo '8' &> ~/.cpu;
fi
#18-9
if [ "${cores}" = 18 ]; then
	echo '9' &> ~/.cpu;
fi
#20-10
if [ "${cores}" = 20 ]; then
	echo '10' &> ~/.cpu;
fi
