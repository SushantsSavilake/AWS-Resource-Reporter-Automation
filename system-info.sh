

#!/bin/bash

##########################################
# Author : Sushant Savilake
# date : 19/01/26
# 
# this script shows server health information 
#
# Version: v1
##########################################

set -x # debug mode. prints all the things which are written below along with executing it.
set -e # exit the script when there is an error
set -o pipefail #fails the script even if the pipe is executed 


df -h
free -g
nproc
ps -ef | grep amazon | awk -F " " '{print $2}'

