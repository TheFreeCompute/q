#!/bin/bash
cores=`sysctl hw.ncpu | sed 's|.* ||'` && echo $cores > ~/Desktop/cores.txt || true
