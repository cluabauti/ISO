#!/bin/bash
#Siempre comento mis scripts, si no hoy lo hago
#y mañana no se que quise hacer
echo "Introduzca su nombre y apellido"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido, $nombre"
echo "su usario es: `whoami`"
echo "Su directorio actual es:"
echo "`pwd`"
