#!/bin/bash
#Si recibe un 1 como parámetro imprime A B
#Si recibe un 2 como parámetro imprime C D
#Si recibe un numero distinto lo informa
if [ $# -eq 1 ]; then
	if [ $1 -eq 1 ] ; then
		echo -e "A\nB"
	else
		if [ $1 -eq 2 ] ; then
			echo -e "C\nD"
		else
			echo "El único parámetro de entrada debe ser 1 ó 2"
		fi #fin $1 -eq 2
	fi #fin $1 -eq 1
else
	echo "Se debe recibir solo un parámetro"
fi #fin de $# -eq 1
