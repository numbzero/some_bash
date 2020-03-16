#!/bin/bash

if [ "$#" -eq "1" ]; then
	if [ -d "$1" ]; then
		DIR="$1"
	else
		echo "[-] File is not a directory or doesn't exists!"
		exit 1
	fi
elif [ "$#" -eq "0" ]; then
	DIR="$HOME"
else
	echo "[-] Too many arguments passed!"
	exit 1
fi

####################################################################
echo "case a:"
du -sh "$DIR" 2> /dev/null | awk '{print $1}'
echo

####################################################################
echo "case b:"
find "$DIR" -maxdepth 1 -type d -exec du -sh {} \; 2> /dev/null | \
		tail -n+2 | \
		sort -hr
