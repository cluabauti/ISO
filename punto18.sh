#!/bin/bash

if [ $# -eq 1 ]; then
	while true; do
		if [ $(who | grep -c $1) -eq 1 ]; then
			echo "Usuario $1 logueado en el sistema"
			exit 0 
		fi
		echo "No se ha logueado"
		sleep 10
	done
fi

