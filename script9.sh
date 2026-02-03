#!/bin/bash
#author:shivam

services=("nginx" "docker" "ssh")

check_service(){
	local svc="$1"
	systemctl is-active "$svc" &> /dev/null
}

cleanup(){
	echo "Cleaning up before exit..."
	exit 0
}

trap cleanup SIGINT SIGTERM

select options in "Show service status" "List all services" "Exit"; do
	case $REPLY in
		1)
			read -r -p "Enter service name: " svc_name

			if check_service "$svc_name"; then
				echo "Service "$svc_name" is running."
			else
				echo "Service $svc_name is not running or does not exists."
			fi
			;;
		2)
			echo "Available services:"
			for svc in "${services[@]}"; do
				echo "$svc"
			done
			;;
		3)
			break
			;;
		*)
			echo "Invalid option. Please try again."
			;;
	esac
done



