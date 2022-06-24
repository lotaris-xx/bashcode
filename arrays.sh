#!/bin/bash - 
#===============================================================================
#
#          FILE: arrays.sh
# 
#         USAGE: ./arrays.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Allen Smith (aks), lazlor@lotaris.org
#  ORGANIZATION: RAH Consulting
#       CREATED: 06/24/2022 09:34
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

elements=( "$@" )


if [ $# == 0 ] ; then
    echo "Hello"
    exit 0
fi

for element in ${elements[@]} ; do
    echo -n "$element "
done

echo ""
