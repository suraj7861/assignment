#!/bin/bash

echo "Enter date :-"
read date;

echo "Enter Month:-"
read month;

if [[ ($month -eq march) && $date -gt 20 ]];
then
		echo "true";
elif [[ ($month -eq april) && $date -lt 30 ]];
then
		echo "true";
elif [[ ($month -eq may) && $date -lt 31 ]];
then
		echo "true";
elif [[ ($month -eq june) && $date -lt 20 ]];
then
		echo "true";
else
		echo "false";
fi
