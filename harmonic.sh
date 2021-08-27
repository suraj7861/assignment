#!/bin/bash -x

read -p "Enter the number :-" n
result=1
for (( i=2; i<=n; i++ ))
do
	temp=$((1/$i))
	result=$(($result+$temp))
done
echo $result
