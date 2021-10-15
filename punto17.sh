#!/bin/bash

for i in $(ls); do
	echo $i | tr '[:upper:][:lower:]' '[:lower:][:upper:]'
done
