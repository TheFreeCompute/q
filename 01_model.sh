#!/bin/bash
sysctl hw.ncpu | sed 's|.* ||' > ~/Desktop/hw.txt
