#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Se debe recibir al menos un parametro"
fi
cant=0
for ((f=1; i=$#; i+=2)) ; do
	file=${$f}
	if [ -d $file ]; then
		echo "$file es un directorio"
	elif [ -f $file ]; then
		echo "$file es un archivo"
	else
		echo  "$file no existe"	
		let cant++
	fi
done
echo "Cantidad de archivos o directorios inexistentes: $cant"
