#!/bin/bash

echo "EJERCICIO MD5 y BUCLES"

for VARIABLE in `ls *.mp4`; do
	md5sum $VARIABLE | awk '{ print $2 }' | cowsay
	md5sum $VARIABLE | awk '{ print $1 }'
done
