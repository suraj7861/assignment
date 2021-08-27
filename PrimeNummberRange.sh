#!/bin/bash -x

read -p "Enter the Staring Number :-" Sn
read -p " Enter the endig Number :-" En
count=0
for ((i=$Sn; i<=$En; i++))
do
	for ((j=1; j<=$(($i/2)); j++))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
				((count++))
		fi
		if [ $count -gt 1 ]
		then 
				break
		fi
	done
if [ $count -eq 1 ]
then
echo "$i is a prime NUmber  "
fi
count=0
done
