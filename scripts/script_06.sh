#!/bin/bash

# Calculate sum of first five even numbers
# What is the range? Guess 1 to infinity ...

SUM="0"
COUNTER="0"
NUMBER="1"

echo -n "Numbers:"
while true; do
	if [ $["$NUMBER" % "2"] -eq "0" ]; then
		SUM=$[$NUMBER + $SUM]
		COUNTER=$[$COUNTER + 1]
		echo -n " $NUMBER"
		if [ $COUNTER -eq "5" ]; then
			break
		fi
	fi
	NUMBER=$[$NUMBER + 1]
done

echo
echo "Sum: $SUM"
