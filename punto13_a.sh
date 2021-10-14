#!/bin/bash
#Lista todos los numeros del 1 al 100 asi como sus cuadrados
for ((i=1; i <= 100; i++))
do
	sq=$((i**2))
	echo "$i = $sq"
done
