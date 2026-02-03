#!/bin/bash
# author: shivam
#

server=("web1" "web2" "db1" "db2")
echo "${server[0]}"	#print first element
echo "${server[1]}"	#print second element

echo "Loop over array"

for s in "${server[@]}"; do
	echo "$s"
done


echo "Length of array"
count=${#server[@]}

echo "$count"


services=("nginx" "docker" "ssh")

for svc in "${services[@]}"; do
    systemctl is-active "$svc"
done


select option in "start" "stop" "restart" "exit"; do
	echo "You chose $option"
	echo "REPLY is $REPLY"
	break
done
