#/bin/bash

echo "Enter two strings."
echo
echo -n "string_1: "
read string_1
echo
echo -n "string_2: "
read string_2
echo

if [ "$string_1" = "$string_2" ]; then
	echo "The strings are equal!"
else
	echo "The strings are different!"
fi
