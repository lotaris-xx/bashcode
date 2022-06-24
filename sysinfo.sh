#!/bin/bash - 
#===============================================================================
#
#          FILE: sysinfo.sh
# 
#         USAGE: ./sysinfo.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Allen Smith (aks), lazlor@lotaris.org
#  ORGANIZATION: RAH Consulting
#       CREATED: 06/24/2022 13:06
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

host_name=$(hostname)
mem_total=$(free -h | grep Mem: | awk '{print $2}')
storage_total=$(df -h / | grep -v Filesystem | awk '{print $2}')
storage_in_use=$(df -h / | grep -v Filesystem | awk '{print $3}')
storage_remaining=$(df -h / | grep -v Filesystem | awk '{print $4}')
hw_vendor=$(sudo dmidecode | grep Vendor: | cut -d: -f2)
serial_num=$(sudo dmidecode | grep "Serial Number:" | grep VMware | cut -d: -f2)

echo Hostname:  $host_name
echo
echo CPU Info
echo --------
lscpu
echo
echo Memory Total: $mem_total
echo Storage Total: $storage_total
echo Storage In Use:  $storage_in_use
echo Storage Remaining: $storage_remaining
echo HW Vendor:  $hw_vendor
echo HW Serial \#: $serial_num

