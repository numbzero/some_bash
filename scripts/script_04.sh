#!/bin/bash

if [ "$#" -eq "1" ]; then
	if [ -d "$1" ]; then
		ls -laR "$1"
	else
		echo "[-] File is not a directory or doesn't exists!"
		exit 1
	fi
else
	echo "Usage: $0 dir_path"
	exit 1
fi
