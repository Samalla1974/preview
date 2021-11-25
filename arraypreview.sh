#!/bin/bash

arrayofnumbers=( 10 15 17 23 78 )

echo ${arrayofnumbers[@]} 
length=${#arrayofnumbers[@]}
echo $length

for (( counter=0; counter<$length; counter++ )) 
do
	n=${arrayofnumbers[$counter]}
	for ((i=2; i<=$n/2; i++))
	do
	pnumber=$(($n%i))
	if [ $pnumber -eq 0 ]
	then
	echo $n"is not a prime number"
	fi
	done
	
	if [ $n == 1 ]
	then
		echo "1 is a composite number"
	else
		echo $n "is a prime number"
	fi
done






