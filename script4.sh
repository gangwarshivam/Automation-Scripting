#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <path/file>"
	exit 1
fi

if [ -f "$1" ]; then
	echo "This is a regular file"
elif [ -d "$1" ]; then
        echo "This is a directory"
elif [ -e "$1" ]; then
	echo "Exists but not a regular file or directory"
else
        echo "Path does not exist"
        exit 1
fi


#       -e (exists)
#     ┌─────────────┐
#     │             │
#     │   -f   -d   │
#     │  file  dir  │
#     │             │
#     └─────────────┘
