#!/bin/bash

if [ $# -lt 2 ]; then
	echo "Usage: $0 <username> <age>"
	exit 1
fi

username=$1
age=$2

echo "Username: $username"
echo "Age: $age"

if [ $age -ge 18 ]; then
	echo "Status: Adult"
else
	echo "Status: Minor"
fi

echo "-------------------------------------"

#for loop example

for i in 1 2 3 4 5 6 7 8 9 10
do 
	echo "Number: $i"
done

echo "------------------------------------"

echo "Script executed successfully"
exit 0
