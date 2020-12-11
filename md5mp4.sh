#!/bin/bash

echo "EJERCICIO MD5 y BUCLES"

EXTENSION="mp3"

for FILE in `ls *.mp4`; do
	echo "_____________"
	VIDEO=`file $FILE | grep -i Media`
	echo $VIDEO
	if [ "$VIDEO" != "" ]; then
		#md5sum $FILE
		echo "Convirtiendo $FILE a $EXTENSION"
		sleep 4
		NAME=`echo $FILE | cut -d "." -f 1`

		ffmpeg -i $FILE $NAME.$EXTENSION 
		sleep 2
	fi	
done
