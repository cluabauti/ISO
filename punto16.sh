#!/bin/bash

if [ $# -eq 1 ]; then
	echo "Archivos .$1 de " $(whoami) " " $(find ~ -name "*.$1"| wc -l) >> reporte.txt

else
	exit 1
fi
