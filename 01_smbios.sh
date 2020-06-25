#!/bin/bash
cores=`sysctl hw.ncpu | sed 's|.* ||'` && if [ "${cores}" = 4 ]; then echo '1' > ~/.cpu; fi
