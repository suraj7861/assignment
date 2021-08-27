#!/bin/bash

function palindrome(){
read -p "Enter no :-" n
tem=$n
rev=0
while [ $n -gt 0 ]
do
		r=$(($n % 10))
		rev=$((($rev * 10) + $r))
		n=$(($n / 10))
done
if [ $tem = $rev ]
then
	echo "$m is palimdrome "
else
	echo "$m is not palimdrome"
fi
}
palindrome()
