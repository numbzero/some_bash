#!/bin/bash

# Check if one argument is passed.
if [ "$#" -eq "1" ]; then
	# Check if it's directory or exist.
	if [ ! -d "$1" ]; then
		echo "[-] File is not a directory or doesn't exists!"
		exit 1
	else
		DIR="$1"
	fi
# Check if more than one arguments passed.
elif [ "$#" -gt "1" ]; then
	echo "[-] Too many arguments passed!"
	exit 1
else
	DIR="$HOME"
fi

# Clean screen.
clear

# ls -R $DIR is good but not so beautiful
tree $DIR
