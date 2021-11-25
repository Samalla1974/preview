#!/bin/bash 

echo "enter number"
read number
n=$number
echo  $n
rev=0
while [ $number -gt 0 ]
do
	r=$(($number%10))
	rev=$(($rev*10+$r))
	number=$(($number/10))
done
	echo "reverse number="$rev
	echo "end of program"

if [ $rev -eq $n ]
then
	echo "number is palindrome"
else
	echo "number is not palindrome"
fi
