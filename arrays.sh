##!/bin/bash
existe(){
	local size=$((${#arreglo[@]} - 1))
	for i in $(seq 0 $size); do
		if [ $1 == ${arreglo[$i]} ]; then
			echo $i
			return 0
		fi
	done
	return 1
}

replace(){
	local pos=$(existe $1)
	if [ $? -eq 0 ]; then #si existe
		arreglo[pos]=$2
		return 0
	fi
	return 1
}

eliminar(){
	existe $1
	if [ $? -eq 0 ]; then #si existe
		local pos=$(existe $1)
		unset arreglo[$pos]
		arreglo=("${arreglo[@]}")
		return 0
	fi
	return 1
}

cantidad(){
	echo ${#arreglo[@]}
}

todos(){
	echo ${arreglo[@]}
}

arreglo=("$@")



echo ${arreglo[@]}
echo "TODOS: $(todos)"
existe $2
echo "Existe $2?: $?"


replace $3 "tamarindo"
echo "Replace $3 : ${arreglo[@]}"


echo "TAMAÑO: ${#arreglo[@]}"

echo "CANTIDAD: $(cantidad)"
eliminar tamarindo


echo "Eliminar tamarindo"

echo "TAMAÑO: ${#arreglo[@]}"

echo "CANTIDAD: $(cantidad)"
echo ${arreglo[@]}
echo "TODOS: $(todos)"
