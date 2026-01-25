#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <path>"
	exit 1
fi

if [ -f "$1" ]; then
	echo "Type: File"
	VAL=$(stat -c %s "$1")
	echo "Size: $VAL"
elif [ -d "$1" ]; then
	echo "Type: Directory"
	VAL=$(ls -1 "$1" | wc -l)
	echo "Number of items:$VAL"
elif [ -e "$1" ]; then
	echo "Type: Other"
else
	echo "Path does not exist"
	exit 1
fi
