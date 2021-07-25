#!/bin/bash
echo "Welcome to Flip Coin Combination Problem."

flipCoin=$((RANDOM%2))
if [ $flipCoin -eq 0 ]
then
	echo "Heads."
else
	echo "Tails." 
fi
