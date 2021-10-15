#!/bin/bash

esPar(){
	if [ $(($1 % 2)) -eq 0 ]; then
		return 0
	else 
		return  1
	fi
}

arreglo=(3 5 2 4 10 23 43 32 19 20)
echo ${arreglo[@]}
aImp=()

for i in ${arreglo[@]}; do
	esPar $i
	if [ $? -eq 0 ] ; then
		echo $i
	else
		aImp=( "${aImp[@]}" $i )
	fi
done

echo ${aImp[@]}
echo "Cantidad de impares: ${#aImp[@]}"
	
