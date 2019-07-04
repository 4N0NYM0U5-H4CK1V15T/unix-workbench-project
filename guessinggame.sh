#!/usr/bin/env bash
# File: guessinggame.sh

highorlow () {
	if [[ $1 -gt $temp ]]
	then
		echo "Too high"
	elif [[ $1 -lt $temp ]]
	then
		echo "Too low"
	fi
}

dependant=0
temp=$(ls -1 * | wc -l)

while [[ $dependant -eq 0 ]]
do
	echo "How many files are present in the current directory: "
	read response
	
	if [[ $response -eq $temp ]]
	then
		echo "You were correct"
		let dependant=1
	else
		highorlow response
	fi
done
