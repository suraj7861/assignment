?#!/bin/bash

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
	elif [ ${arr[i]} != $max ] && [ ${arr[i]} -gt $secmax ] 
	then	
		secmax=${arr[$i]};
	fi	
done
echo "second largest number is"$secmax
min=${arr[0]}
secmin=${arr[0]}

for (( i=0; i<10; i++))
do
        if [ $min -gt ${arr[$i]} ]
        then
                secmin=$min;
                min=${arr[$i]};
	 elif [ ${arr[i]} != $min ] && [ ${arr[i]} -lt $secmin ]
	then
                secmin=${arr[$i]};
	fi
done
echo "second smallest number is"$secmin

