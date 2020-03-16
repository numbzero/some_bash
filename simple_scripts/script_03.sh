#!/bin/bash

echo "PID-ul meu este $$"

# PID-ul se schimba, valoarea lui se mareste.
# Cind este executat un script, shell-ul creeaza un un nou preces copil
# caruia i se atribuie un nou PID unic, dupa ce finalizeaza executarea
# procesul intoarce controlul procesului parinte.
