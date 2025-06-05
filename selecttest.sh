#!/bin/bash

PS3="Choose by numbers."
echo "Choose the number from list."

select item in foo bar baz exit
do

if [ "$item" = "exit" ]
then
	break
else
	echo "$item selected."
fi
done

echo

echo "Choose the number from list."

select item in foo bar baz exit
do
	case "$item" in
		foo|bar|baz)
			echo "${item} selected."
			;;
		exit)
			echo "exit selectred. this script will tarminate."
			break
			;;
		*)
			echo "invalid select. Choose again from list."
			;;
	esac
done
