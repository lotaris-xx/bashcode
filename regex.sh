#!/bin/bash - 
#===============================================================================
#
#          FILE: regex.sh
# 
#         USAGE: ./regex.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Allen Smith (aks), lazlor@lotaris.org
#  ORGANIZATION: RAH Consulting
#       CREATED: 06/24/2022 10:36
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

test_string="Hello World"

if [[ "$@" =~ "${test_string}" ]]; then
    echo Strings Matched
else
    echo Strings did not match
fi

