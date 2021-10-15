#!/bin/bash

push(){
	PILA=("${PILA[@]}" $1)
}

length(){
	largo=${#PILA[@]}
	echo "$largo"
}

pop(){
	largo=$(($(length) - 1))
	unset PILA[$largo]
	PILA=( ${PILA[@]} )
}

imprimir(){
	for ((i=$(length); i=0; i--)); do
		echo ${PILA[i]}
	done
}




export PILA=()

#agrego
echo PUSH
for i in $(seq 10); do
	push $i
done

#saco 3 elementos
echo POP
for i in $(seq 3); do
	pop 
done

echo "LARGO fin="
echo $(length)
echo ${PILA[@]}
