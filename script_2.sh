#!/bin/bash

if [ $# -eq 1 ]; then #verifica que se recibe el archivo tar
	mkdir prueba
	tar -xf $1 -C prueba #descomprimo en el directorio 
	lines=$( expr $(ls prueba | wc -l) / 2 )
	cd prueba
	arreglo=()
	for i in $(seq $lines); do
		diff "s$i" "p$i" >/dev/null
		if [ $? -eq 0 ]; then
			arreglo+=0
		else
			arreglo+=1
		fi
	done
	echo ${arreglo[*]}
	cd ..
	rm -r prueba
	exit 0
else
	exit 1
fi
		
	
	
