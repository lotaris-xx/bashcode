#!/bin/bash - 
#===============================================================================
#
#          FILE: totals.sh
# 
#         USAGE: ./totals.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Allen Smith (aks), lazlor@lotaris.org
#  ORGANIZATION: RAH Consulting
#       CREATED: 06/24/2022 11:26
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

awk '{ item_cost = $2 * $3 ;
        running_total += item_cost ;
        print $1, "$"item_cost }
    END { print "Total: "running_total }' infile
