#!/bin/bash

dispProcesados=0
actual=$disp
sumaTotal=0
promedio=0
cantDisp=0

arreglo=()

while read line
do
	arreglo=(${arreglo[@]} $line)
done

disp=${arreglo[0]}
temp=${arreglo[1]}
i=0
tamanio=$((${#arreglo[@]}-2))
while [ $i -lt $tamanio ]
do
	actual=$disp
	sumaTotal=0
	cantDisp=0
	while [ $disp -eq $actual ]
	do
		sumaTotal+=$temp
		let cantDisp++
		i+=2
		disp=${arreglo[$i]}
	done
	let promedio=$sumaTotal/$cantDisp
	echo "$actual $promedio"
	let	dispProcesados++
done

echo "Cantidad de dispositivos procesados: $dispProcesados"
