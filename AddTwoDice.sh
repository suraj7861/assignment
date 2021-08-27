#!/bin/bash -x

Dice_1=$((RANDOM%7));
Dice_2=$((RANDOM%7));

Add=$(($Dice_1 + $Dice_2));

echo "Result of Random Dice is (Dice_1,Dice_2): ($Dice_1,$Dice_2)";

echo "Addition of two dice is ="$Add;
