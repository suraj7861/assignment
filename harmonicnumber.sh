#!/bin/bash

read -p "Enter the number :-" n
Hn=1
for (( i=2; i<=n; i++ ))
do
	temp=$((1/$i))
	Hn=$(($Hn+$temp))
done
echo $Hn
