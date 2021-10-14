#!/bin/bash
#Realiza un script que le solicite al usuario 2 numeros
#los lea de la entrada Standard e imprima la 
#multiplicacion, suma, resta y cual es la mayor de los numeros leidos
if [ $# -eq 2 ]; then
echo "Multiplicacion entre $1 y $2:"
echo $(($1 * $2))
echo "Suma entre $1 y $2:"
echo $(($1 + $2)) 
echo "Resta entre $1 y $2:"
echo $(($1 - $2))
echo "Numero mayor entre $1 y $2:"
if [ $1 -gt $2 ]; then
	echo "$1 es mayor que $2"
else
	if [ $1 -lt $2 ]; then
		echo "$2 es mayor que $1"
	else 
		echo "$1 y $2 son iguales"
	fi
fi
fi
