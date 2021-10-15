#!/bin/bash

arregloI=()
arregloD=()

#recorro linea por linea y pregunto si es igual a apt-get install o a apt remove, 
#luego agrego al arreglo segun corresponda
while separador= read -r line
do
	if [[ "$line" == *"apt-get install"* ]]; then
       arregloI=("${arregloI[@]}" $(echo "$line" | cut -d" " -f4))
    elif [[ "$line" == *"apt remove"* ]]; then 
        arregloD=("${arregloD[@]}"  $(echo "$line" | cut -d " " -f4))    
	fi
done < history.log

echo "Paquetes instalados (total ${#arregloI[@]})"
echo ${arregloI[@]}

echo "Paquetes desinstalados (total ${#arregloD[@]})"
echo ${arregloD[@]}

