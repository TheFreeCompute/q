#!/bin/bash

cores=`sysctl hw.ncpu | sed 's|.* ||'` && echo $cores > ~/Desktop/hw.txt

model=`system_profiler SPHardwareDataType | grep 'Model Identifier' | sed 's|.* ||'` && echo $model >> ~/Desktop/hw.txt
