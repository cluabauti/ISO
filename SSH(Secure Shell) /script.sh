#!/bin/bash

echo "Ingresar nombre de usuario a consultar"
read user
if [ "$user" == "" ]; then
	exit 0
fi

invalidPass=($(cat ssh.log | grep "Failed password for $user from" | tr " " "_" ))

cantInvalidos=0

for line in ${invalidPass[@]} ;do
	echo "$(echo $line | cut -d"_" -f11) $(echo $line | cut -d"_" -f3)"
	let cantInvalidos++
done

if [ $cantInvalidos -eq 0 ]; then
	echo "No hay accesos invalidos por password invalida"
else
	echo "Total de accesos invalidos: $cantInvalidos"
fi
exit 0
