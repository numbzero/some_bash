#!/bin/bash

MONTHS=('January'
		'February'
		'March'
		'April'
		'May'
		'June'
		'July'
		'August'
		'September'
		'October'
		'November'
		'December')

while true; do
	echo -n "Chose month (0 - exit): "
	read month
	case $month in
		0)
			break
			;;
		1)
			echo "${MONTHS[0]}"
			;;
		2)
			echo "${MONTHS[1]}"
			;;
		3)
			echo "${MONTHS[2]}"
			;;
		4)
			echo "${MONTHS[3]}"
			;;
		5)
			echo "${MONTHS[4]}"
			;;
		6)
			echo "${MONTHS[5]}"
			;;
		7)
			echo "${MONTHS[6]}"
			;;
		8)
			echo "${MONTHS[7]}"
			;;
		9)
			echo "${MONTHS[8]}"
			;;
		10)
			echo "${MONTHS[9]}"
			;;
		11)
			echo "${MONTHS[10]}"
			;;	
		12)
			echo "${MONTHS[11]}"
			;;
		*)
			echo "Wrong input!"
			;;
	esac
done

echo "Exiting!"
