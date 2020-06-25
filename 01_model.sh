#!/bin/bash

#сколько ядер процессора (без учёта потоков)
cores=`sysctl hw.ncpu | sed 's|.* ||'` && echo $cores > ~/Desktop/cpu.txt || true
