#!/bin/bash

if [ ! -e /home/tata/jesus ]; then
    mkdir /home/tata/jesus
fi

cant=0
for file in $(ls); do
    echo $file
    mv $file /home/tata/jesus
    let cant++
done

echo "SE MOVIERON $cant A /home/tata/jesus" 

