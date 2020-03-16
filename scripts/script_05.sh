#!/bin/bash

if [ "$#" -eq "1" ]; then
	if [ ! -d "$1" ]; then
		echo "[-] File is not a directory or doesn't exists!"
		exit 1
	fi
else
	echo "Usage: $0 directory"
	exit 1
fi	

cp -r "$1" "copy_dir"
