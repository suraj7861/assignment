#!/bin/bash -x

echo "1.Feet to Inch 2.Feet to Meter 3.Inch to Feet 4.Meter to Feet"
echo "enter choise from 1 to 4 as above"
read  Choise;
echo "give input"
read input;

case $Choise in
	1)
		FeettoInch=$(($input*12))
		echo " FeettoInch:"$FeetToInch ;;
	2)
		FeettoMeter=$(($input**0.3048))
		echo " FeettoMeter:"$FeettoMeter ;;
	3)
		InchtoFeet=$(($input/12))
		echo " InchtoFeet:"$InchtoFeet;;

	4)
		MetertoFeet=$(($input/0.3048))
		echo "MetertoFeet: "$MetertoFeet ;;
	*)
		echo "please Enter correct choice"
esac
