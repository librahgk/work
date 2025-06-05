#!/bin/sh

#for file in $(ls)
#do
#	stat $file
#done

for i in 1 2 3 4 5
do
	if [ $i -eq 3 ]
	then
		echo "i reached $i."
		break
	fi

	echo $i
done

echo 

for i in 1 2 3 4 5
do
        if [ $i -eq 3 ]
        then
                echo "i reached $i."
                continue
        fi

        echo $i
done
