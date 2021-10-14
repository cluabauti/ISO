#!/bin/bash
#Realiza un script que le solicite al usuario 2 numeros
#los lea de la entrada Standard e imprima la 
#multiplicacion, suma, resta y cual es la mayor de los numeros leidos
echo "Ingrese dos numeros: "
read x y
echo "Multiplicacion entre $x y $y:"
echo $((x * y))
echo "Suma entre $x y $y:"
echo $((x + y)) 
echo "Resta entre $x y $y:"
echo $((x - y))
echo "Numero mayor entre $x y $y:"
if [ $x -gt $y ]; then
	echo "$x es mayor que $y"
else
	if [ $x -lt $y ]; then
		echo "$y es mayor que $x"
	else 
		echo "$x y $y son iguales"
	fi
fi
