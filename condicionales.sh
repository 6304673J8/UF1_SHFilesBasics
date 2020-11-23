#!/bin/bash

echo "DataBase items finder V4.2"
echo "--------------------------"
echo ""
echo "Tell me the file name: "

read FILE

if [ -d $FILE ]; then
	cowsay "File exists"
else
	echo "File is lost"
fi
