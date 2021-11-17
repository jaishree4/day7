#!/bin/bash 
count=0
declare -A arr
for(( i=1;i<=10;i++ ))
do
	ran=$((1+RANDOM%999))
	arr[((count++))]=$ran
	echo $arr[$ran]
done
