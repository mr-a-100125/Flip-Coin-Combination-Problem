#!/bin/bash 
echo "Welcome to Flip Coin Combination Problem."

n=100
declare -A singlet
head=1
tail=1
while [ $n -gt 0 ]
do
	flipCoin=$((RANDOM%2))
	if [ $flipCoin -eq 0 ]
	then
		singlet[Heads]=$head
		head=$(($head+1))
	else
		singlet[Tails]=$tail
		tail=$(($tail+1))
	fi
	n=$(($n-1))
done

if [ ${singlet[Heads]} -gt ${singlet[Tails]} ]
then
	echo "Heads win with $((${singlet[Heads]}-${singlet[Tails]}))%"
else
	echo "Tails win with $((${singlet[Tails]}-${singlet[Heads]}))%"
fi
