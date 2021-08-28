#!/bin/bash -x

echo "1.Degree to Fer 2.Fer to Celcius. "
read -p "Enter the option :-" n
read -p "Enter the Degree you want to change :-" d
if [ $n -eq 1 -a $d -gt 0 -a $d -lt 100 ] || [ $n -eq 2 -a $d -gt 32 ]
then
		function conversion(){
		case $1 in 
					1)
							result=`echo $d | awk '{print $1*(9/5)}'`
						        degF=`echo $result | awk '{print $1+32}'`
							echo "$degF Fer";;
					2)
							result=`echo $d | awk '{print $1-32}'`
							degC=`echo $result | awk '{print $1*(5/9)}'`
							echo "$degC Cel";;
					*)
							echo "Enter the correct choice.....";;
					esac
}
cal=$( conversion $n )
echo $cal
else
		echo "The no range Between 0-100 or 32-212f"
fi
