#!/bin/bash

# Scriptul compara valorile numerice ale parametrilor.

# In caz ca primul parametru va fi mai mic decit al doile:

# va afisa in cazul cu ghilimele simple $1 < $2 sau $2 < $1.
((test $1 -lt $2) && (echo '$1 < $2')) || (echo '$2 < $1')

# iar in cazul ghilimelelor duble variabilele argumentelor
# vor fi inlocuite cu valorile lor.
((test $1 -lt $2) && (echo "$1 < $2")) || (echo "$2 < $1")

# Codul returnat va fi 0 deoarce este codul returnat de ultima comanda 
# executata in aceasta conditie.

if [ $1 -lt $2 ]; then
	echo "$1 < $2"
else
	echo "$2 < $1"
fi
