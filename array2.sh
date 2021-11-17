#!/bin/bash -x

declare -a arr

for (( i=o;i<10;i++ ))
do
	random=$(( (RANDOM%899)+100 ))
	arr[$i]=$random
done
echo ${arr[@]}

for(( i=0;i<10;i++ ))
do
   for(( j=0;j<10-i-1;j++ ))

   do
	if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
	then
	 temp=${arr[j]}
	arr[$j]=${arr[$((j+1))]}
	arr[$((j+1))]=$temp
	fi
   done
done
echo "Array in sorted order"
echo ${arr[*]}
echo ${arr[8]}
echo ${arr[1]}

