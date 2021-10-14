#!/bin/bash



usuarios=()
cat /etc/group | grep scanner  | cut -d: -f4 > .prueba.txt



for i in $(); do
	echo $i
done

echo ${usuarios[@]}

