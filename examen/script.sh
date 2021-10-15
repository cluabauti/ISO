#!/bin/bash
pwd

arregloI=()
arregloD=()

for i in $(cat history.log | grep Commandline); do
    if [ $i == "Commandline: apt-get install *" ]; then
        arregloI=("${arregloI[@]}" $(echo $i | cut -d" " -f4))
    elif [ $i == "Commandline: apt remove *" ]; then 
        arregloD=("${arregloD[@]}"  $(echo $i | cut -d" " -f4))    
    fi
done

echo "Paquetes instalados (total ${arregloI[@]})"
echo ${arregloI[@]}

echo "Paquetes desinstalados (total ${arregloD[@]})"
echo ${arregloD[@]}

read