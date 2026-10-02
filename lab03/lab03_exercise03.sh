#!/bin/bash


# heres a brand new command: 
# it calls ps -ef, then pipes it into word counter
# then stores the result in ct
#
ct=$(ps -ef | wc -l)
p1=$1
OutputType=$2


if [ "$ct" -gt "$p1" ]; then
	echo "Maximum number of processes NOT exceeded"
else
	echo "Maximum number of processes exceeded"
fi


if [ "$OutputType" -eq 1 ]; then
     echo "Output to screen"
elif [ "$OutputType" -eq 2 ]; then
     echo "Processes have exceeded or not been exceeded" | date >> logs.sh	
else 
     echo "error"	
fi



	 


