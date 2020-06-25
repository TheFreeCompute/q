#!/bin/bash

echo `sysctl hw.ncpu | sed 's|.* ||'` > ~/Desktop/hw.txt
