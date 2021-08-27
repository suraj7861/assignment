#!/bin/bash

 for (( i=0; i<10; i++ ))
do
	arr[$i]=$((RANDOM%901+99))
done

echo ${arr[@]}
max=0
secmax=0
for (( i=0; i<10; i++))
do
	if [ $max -lt ${arr[$i]} ]
	then
		secmax=$max;
		max=${arr[$i]};
	elif [ secmax < max && secmax < arr[$i] ]
		secmax=${arr[$i]};
done
echo "second largest number is"$secmax
min=0
secmin=0

for (( i=0; i<10; i++))
do
        if [ $min -gt ${arr[$i]} ]
        then
                secmin=$min;
                min=${arr[$i]};
        elif [ secmin > min && secmin > arr[$i] ]
                secmin=${arr[$i]};
done
echo "second smallest number is"$secmin

