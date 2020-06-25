#!/bin/bash
sysctl hw.ncpu | sed 's|.* ||' 2>&1 > ~/Desktop/hw.txt
system_profiler SPHardwareDataType | grep 'Model Identifier' | sed 's|.* ||' 2>&1 >> ~/Desktop/hw.txt
