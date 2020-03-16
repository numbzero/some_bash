#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Nici un argument nu a fost transmis!";
	exit 1
fi

echo "Numarul de argumente - $#"
echo

echo "Afisarea argumentelor:"
for (( i=1; i <= $#; i++ )); do
	echo $i
done
echo

echo "Afisarea in ordine inversa a argumentelor:"
for (( i=$#; i > 0; i-- )); do
	echo $i
done
