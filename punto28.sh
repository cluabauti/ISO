#!/bin/bash

#recibe por parametro el nombre de un directorio
#si no existe termina con codigo de error 4
#si existe, se cuenta por separado la cantidad
#de archivos con permiso de lectura y escritura

if [ $# -eq 0 ];then
	echo "Cantidad de parametros invalida"
	exit 1
fi

if [ ! -d $1 ]; then
	echo "$1 no es un directorio"
	exit 4
fi


cant=0
for file in $(ls $1); do
	if [ -w $file ] && [ -r $file ]; then
		echo $file
	fi
done	
