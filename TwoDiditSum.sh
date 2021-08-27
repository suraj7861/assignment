#!/bin/bash -x

echo "enter two digit number"
read a;
read b;
read c;
read d;
read e;

Sum=$(($a+$b+$c+$d+$e));
Average=$(($Sum/5));
echo "Sum ="$Sum;
echo "Average ="$Average;
