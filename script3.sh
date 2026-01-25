#!/bin/bash

if [ $# -eq 1 ]; then

	if ! echo $1 | grep -Eq '^[0-9]+$' ; then
		echo "Error: Please enter a valid age"
		exit 1
	else
		if [ $1 -lt 18 ]; then
			echo "Minor"
		fi
		if [ $1 -ge 18 ];then
			if [ $1 -lt 60 ]; then
				echo "Adult"
			else
				echo "Senior Citizen"
			fi
	        fi	       
		exit 0
	fi

else
	echo "Usage: $0 <age>"
	exit 1
fi

