#!/bin/bash

echo "MENU DE COMANDOS"
arreglo=(Salir)
cont=1
for i in $(ls | grep ".sh"); do
	arreglo[cont]=$i
	let cont++
	
done
select opc in ${arreglo[*]}; do
	if [ $opc != Salir ] ;then
		./$opc
	else
		exit 0
	fi
done
echo ${arreglo[@]}

