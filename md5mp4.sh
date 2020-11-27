#!/bin/bash

echo "EJERCICIO MD5 y BUCLES"

for VARIABLE in `ls *.mp4`; do
	echo "_____________"
	VIDEO=`file $VARIABLE | grep Media`
	if [ "$VIDEO" != "" ]; then
		md5sum $VARIABLE
	fi	
		md5sum $VARIABLE | awk '{ print $2 }' | cowsay
		md5sum $VARIABLE | awk '{ print $1 }' | cowsay
done

