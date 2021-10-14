#!/bin/bash



num=(10 3 5 7 9 3 5 4)

productoria(){
	res=1
	cant=$((${#num[@]} - 1))
	echo $cant
	for i in $(seq $cant); do
		res=$(($res * ${num[$i]}))
	done
	echo $res
}

echo $(productoria)

