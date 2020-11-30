#!/bin/bash

echo "EJERCICIO MD5 y BUCLES"

for FILE in `ls *.mp4`; do
	echo "_____________"
	VIDEO=`file $FILE | grep -i Media`
	echo $VIDEO
	if [ "$VIDEO" != "" ]; then
		#md5sum $FILE
		NAME=`echo $FILE | cut -d "." -f 1`

		ffmpeg -i $FILE $NAME.mkv 
	fi	


done

