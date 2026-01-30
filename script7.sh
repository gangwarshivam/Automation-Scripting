#!/bin/bash
#author: shivam gangwar

check_exists(){
	if [ -e "$1" ]; then
		return 0
	fi

	return 1
}

check_type(){
	if [ -f "$1" ]; then
		echo "Type: File"
		return 0
    elif [ -d "$1" ]; then
        echo "Type: Directory"
		return 0
    else
        echo "Type: Other"
		return 0
	fi
}

show_size(){
	if [ -f "$1" ]; then
		local VAL=$(stat -c %s "$1")
		echo "Size: $VAL"
		return 0
	fi
	
	return 1
}


if [ $# -ne 1 ]; then
	echo "Invalid arguments. Usage: <$0> <argument>"
	exit 1
fi

if  ! check_exists "$1" ; then
	echo "Path does not exists"
else 
	check_type "$1"
fi


if [ -f "$1" ]; then
	show_size "$1"
fi

exit 0
 


