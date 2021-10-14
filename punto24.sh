#!/bin/bash

vector1=(23 54 32 5 88 190 3 5)
vector2=(1 1 1 1 1 1 1 1)


echo "Vector 1: (${vector1[@]})"
echo "Vector 2: (${vector2[@]})"

largo=$((${#vector1[@]} - 1))

for i in $(seq 0 $largo); do
#	suma=$(( ${vector1[$i
	echo "La suma de los elementos de la posicion $i de los vectores es $(( ${vector1[$i]} + ${vector2[$i]})) "
done 

