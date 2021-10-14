#!/bin/bash

if [ $# -ne 3 ]; then #si el numero de paramentros es distinto a 3
	echo "cantidad de parametros incorrecta"
	exit 1
fi
if [ ! -d $1 ]; then #si no existe el directorio
	echo "no existe el directorio"
	exit 2
fi
if [ -z $3 ]; then
	echo "El tercer parametro es nulo"
	exit 3
fi

case $2 in
	"-a")
		for i in $(ls $1); do
			mv $1/$i $1/$i$3
		done
	;;
	"-b")
		for i in $(ls $1); do
			mv $1/$i $1/$3$i
		done
	;;
	*) 
		echo "Solo se recibe -a o -b"
		exit 4
	;;
esac
