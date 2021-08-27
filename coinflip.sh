#!/bin/bash 

Head=0;
Tail=1;

coin_toss=$((RONDOM%2));

if [ $Head -eq $coin_toss ];
then
        echo "result of coin flip is: Head";
else
         echo "result of coin flip is: Tail";
fi
