#!/bin/sh
version=$(lsb_release -r -s)

case "$version"
	in
	"24.04") echo "noble" ;;
	"22.04") echo "jammy" ;;
	"20.04") echo "focal" ;;
	"18.04") echo "bionic" ;;
	*) echo "other" ;;
esac

version=$(lsb_release -r -s)

case "$version"
	in
	"24.04" | "22.04" | "20.04" | "18.04") echo "${version} is LTS" ;;
	*) echo "${version} is non-LTS" ;;
esac

i=1
while [ $i -le 15 ]
do
	echo "$i th loop"
	i=$(( i + 1 ))
done
