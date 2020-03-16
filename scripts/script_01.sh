#!/bin/bash

if [ "$#" -eq "0" ]; then
	echo "Buna ziua, $USER!"
elif [ "$#" -eq "2" ]; then
	echo "Buna ziua, $1 $2!"
fi
