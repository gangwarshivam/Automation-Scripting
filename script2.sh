#!/bin/bash

if [ $# -lt 1 ]; then
	echo "Usage: $0 <number>"
	exit 1
fi

if ! echo $1 | grep -Eq '^[0-9]+$'; then
       echo "Error: Enter a valid number"
       exit 1
fi

if [ $1 -eq 10 ]; then
	echo "Number equal to 10"
	exit 0
fi

if [ $1 -gt 10 ]; then
	echo "Number greater than 10"
else
	echo "Number smaller than 10"
fi

echo "Script executed successfully"
exit 0
