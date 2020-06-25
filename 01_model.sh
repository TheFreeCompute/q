#!/bin/bash
sysctl hw.ncpu | sed 's|.* ||' 1> ~/Desktop/hw.txt
system_profiler SPHardwareDataType | grep 'Model Identifier' | sed 's|.* ||' 1>> ~/Desktop/hw.txt
