#!/bin/bash

if [ "$#" -eq "0" ]; then
	echo "Usage: $0 number"
	exit 1
fi

echo "Using while:"
NUM="1"
while [ "$NUM" -le "$1" ]; do
	echo "$NUM"
	(( NUM = NUM + 1 ))
done
echo

echo "Using until:"
NUM="1"
until [ "$NUM" -gt "$1" ]; do
	echo "$NUM"
	(( NUM = NUM + 1 ))
done
echo

# Loop doesn't matter.
NUM="1"
SUM="0"
until [ "$NUM" -gt "$1" ]; do
	(( SUM = SUM + NUM ))
	(( NUM = NUM + 1 ))
done

(( AVG = SUM / $1 ))
echo "Average: $AVG"
