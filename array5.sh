#!/bin/bash 

declare -a arr

for(( j=1;j<=100;j++ ))
do
	var=$j
       if [ $(($var%11)) -eq  0 ]
	then
	
        echo arr[$j]
	fi
done
