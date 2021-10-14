#!/bin/bash
#recibe el nombre de un archivo e informa si existe o no
#Si existe indica si es un directorio o un archivo
#Si no existe, crea un directorio con el nombre del parametro

if [ -d $1 ] ; then
	echo "El directorio $1 EXISTE"
else
	if [ -f $1 ] ; then
		echo "El archivo $1 EXISTE"
	else
		mkdir $1
		echo "Se creo el directorio $1"
	fi
fi

