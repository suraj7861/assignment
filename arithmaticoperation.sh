#!/bin/bash -x

echo "enter values for a b c";
read a;
read b;
read c;

op1=$(($a+$b*$c)); 
op2=$(($a%$b+$c)); 
op3=$(($c+$a/$b));
op4=$(($a*$b+$c));

if [[ $(($op1 -gt $op2)) $(($op1 -gt $op3)) $(($op1 -gt $op4)) ]]
then
	echo "maximum Arithmatic opration is a+b*c=" $op1;
elif [[ $($op2 -gt $op1) && $($op2 -gt $op3) && $($op2 -gt $op4) ]]
then
        echo "maximum Arithmatic opration is a%b+c=" $op2;
elif [[ $($op3 -gt $op1) && $($op3 -gt $op2) && $($op3 -gt $op4) ]]
then
        echo "maximum Arithmatic opration is c+a/b=" $op3;
else
        echo "maximum Arithmatic opration is a*b+c=" $op4;
fi
