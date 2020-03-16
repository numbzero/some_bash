#!/bin/bash

if [ "$#" -eq "1" ]; then
	if [ -d "$1" ]; then
		# case a 
		NUM=$(find "$1" -maxdepth 1 -type d 2> /dev/null | wc -l)
		echo "a) Number of dirs: $[$NUM - 1]"
		# case b
		NUM=$(find "$1" -type d 2> /dev/null | wc -l)
		echo "b) Number of dirs: $[$NUM - 1]"
	else
		echo "[-] File is not a directory or doesn't exists!"
		exit 1
	fi
else
	echo "Usage: $0 dir_path"
	exit 1
fi
