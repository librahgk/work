#!/bin/bash

PS3="Choose one animal from list. :"

#select shell script
echo
echo "These are zodiac signs of Japan.
Select the zodiac sign of this year."
echo
select item in tori inu inoshishi nezumi ushi tora usagi tatsu hebi uma hitsuzi saru exit
do
	if [ "$item" = "exit" ]
	then
		echo
		echo "exit has selected.
		This script will terminate."
		echo
		break
	
	elif [[ "$REPLY" =~ ^([1-9]|1[0-3])$ ]]
	then
		echo "${item} has seleted. This year's zodiac sign is ${item}."

	else
		echo "Invalid item selected.
		Please select again proper one."

	fi

done
