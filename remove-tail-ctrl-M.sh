#!/bin/bash

################################################################################
#
# Remove tail ^M from source file
#
# Usage: remove-tail-ctrl-M.sh <file1> <file2> ...
#
################################################################################

sed -e 's/\^M$//g' $@
