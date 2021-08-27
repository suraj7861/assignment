#!/bin/bash -x

isleap="false"
echo "enter the year:-"
read yy

if [ $((yy % 4)) -ne 0 ] ; then
	:
elif [ $((yy % 400)) -eq 0 ]; then
	isleap="true"
elif [ $((yy % 100)) -eq 0 ];then
	:
else
	isleap="true"
fi

if [ "$isleap" == "true" ]
then
		echo "$yy is leap year"
else
		echo "$yy is not leap year"
fi

