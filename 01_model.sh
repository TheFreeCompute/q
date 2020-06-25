#!/bin/bash

echo `sysctl hw.ncpu | sed 's|.* ||'` > ~/Desktop/hw.txt
system_profiler SPHardwareDataType | grep 'Model Identifier' | sed 's|.* ||' >> ~/Desktop/hw.txt
