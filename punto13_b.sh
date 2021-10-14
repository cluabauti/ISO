#!/bin/bash
#Listar: lista el contendio del directorio actual 
#DondeEstoy: muestra el directorio donde me encuentro ubicado
#QuienEsta: muestra los usuarios conectados al sistema

select action in Listar DondeEstoy QuienEsta Salir
do
case $action in
	"Listar")
		echo $(ls)
	;;
	"DondeEstoy")
		echo $(pwd)
	;;
	"QuienEsta")
		echo $(who)
	;;
	"Salir")
		exit 0
	;;
esac
done
