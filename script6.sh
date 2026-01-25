#!/bin/bash
#author: SHIVAM GANGWAR

while true; do
	echo "1. Check file or directory"
	echo "2. Count files in a directory"
	echo "3. Show file size"
	echo "4. Exit"
	read -r choice
    if [ -z "$choice" ];then
		echo "No input provided, Exiting..."
		break
	fi
	if (( choice < 1 || choice > 4 )); then
		echo "Invalid choice, please try again."
		continue
	fi
	case "$choice" in
		1)
			echo "Enter a path"
			read -r path

			if [ -z "$path" ]; then
				echo "Empty path provided"
				continue
			fi

			if [ -f "$path" ]; then
				echo "Regular File"
				continue
			elif [ -d "$path" ]; then
				echo "Directory"
				continue
			elif [ -e "$path" ]; then
				echo "Other type"
				continue
			else
				echo "Does not exist"
				continue
			fi
			;;

		2)
			echo "Enter directory path"
			read -r dir_path
			if [ -z "$dir_path" ]; then
				echo "Empty path provided"
				continue
			fi
			if [ -d "$dir_path" ]; then
				echo "Counting files in a directory"
				VAL=$(ls -1 "$dir_path" | wc -l)
				echo "Items inside the directory: $VAL"
				continue
			else
				echo "Error: Not a valid directory path"
				continue
			fi
			;;

		3)
			echo "Enter file path"	
			read -r file_path
			if [ -z "$file_path" ]; then
				echo "Empty path provided"
				continue
			fi
			if [ -f "$file_path" ]; then
				VAL=$(stat -c %s "$file_path")
				echo "Size: $VAL"
				continue
			else
				echo "Error: Not a valid file path"
				continue
			fi
			;;

		4)
			echo "Goodbye!"
			exit 0
			;;
		*)
			echo "Invalid option, please try again."
			;;
	esac

done
