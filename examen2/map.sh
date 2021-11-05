#!/bin/bash

cat $1 | grep -v - | sort -k1 -n 

