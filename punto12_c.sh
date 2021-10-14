#!/bin/bash
#Calculadora: recibe la operacion y los numeros como parametro
if [ $# -eq 3 ] ; then
	if [ "$2" == "+" ] || [ "$2" == "-" ] || [ "$2" == "*" ] || [ "$2" == "/" ]
	then
		case $2 in
			"+")
				echo $(($1 + $3))
		;;
			"*")
				echo $(($1 * $3))
		;;
			"/") 
				echo $(($1 / $3))
		;;
			"-")
				echo $(($1 - $3))
		;;
		esac
	else
		echo "El segundo argumento debe ser un operador"
		exit 2
	fi
else
	echo "Parametros recibidos: $#"
	exit 1
fi
