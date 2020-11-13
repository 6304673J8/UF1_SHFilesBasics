#!/bin/bash

echo "Coloring exercise"

COLOR=101

for FILE in `ls`; do
	if [ -e $FILE ]; then
		echo -e "\e[42m File $FILE exists.\e[0m"
	else
		echo -e "\[41m Error. File $FILE couldn't be found.\e[0m"
	fi
done 

for RAINBOW in "\e[101m" "\e[32m" "\e[33m" "\e[104m" "\e[106m" "\e[105m"; do
	echo -e "\e[$COLOR;30m Colorful flag \e[0m"
	COLOR=$((COLOR+1))
done
