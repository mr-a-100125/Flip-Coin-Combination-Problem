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

declare -A doublet
hh=1
ht=1
th=1
tt=1

n=100
while [ $n -gt 0 ]
do
	flipCoin1=$((RANDOM%2))
	flipCoin2=$((RANDOM%2))
	if [ $flipCoin1 -eq 0 ]&&[ $flipCoin2 -eq 0 ]
	then
		doublet[HH]=$hh
		hh=$(($hh+1))
	elif [ $flipCoin1 -eq 0 ]&&[ $flipCoin2 -eq 1 ]
	then
		doublet[HT]=$ht
		ht=$(($ht+1))
	elif [ $flipCoin1 -eq 1 ]&&[ $flipCoin2 -eq 0 ]
	then
		doublet[TH]=$th
		th=$(($th+1))
	else
		doublet[TT]=$tt 
		tt=$(($tt+1))
	fi
	n=$(($n-1))
done


for key in ${!doublet[@]}
do
	echo "$key : ${doublet[$key]} %"
done

declare -A triplet
hhh=1
hht=1
hth=1
htt=1
thh=1
tth=1
tht=1
ttt=1

n=100
while [ $n -gt 0 ]
do
	flipCoin1=$((RANDOM%2))
	flipCoin2=$((RANDOM%2))
	flipCoin3=$((RANDOM%2))
	if [ $flipCoin1 -eq 0 ]&&[ $flipCoin2 -eq 0 ]&&[ $flipCoin3 -eq 0 ]
        then
                triplet[HHH]=$hhh
                hhh=$(($hhh+1))
	elif [ $flipCoin1 -eq 0 ]&&[ $flipCoin2 -eq 0 ]&&[ $flipCoin3 -eq 1 ]
        then
                triplet[HHT]=$hht
                hht=$(($hht+1))
        elif [ $flipCoin1 -eq 0 ]&&[ $flipCoin2 -eq 1 ]&&[ $flipCoin3 -eq 0 ]
        then
                triplet[HTH]=$hth
                hth=$(($hth+1))
        elif [ $flipCoin1 -eq 0 ]&&[ $flipCoin2 -eq 1 ]&&[ $flipCoin3 -eq 1 ]
        then
                triplet[HTT]=$htt
                htt=$(($htt+1))
	elif [ $flipCoin1 -eq 1 ]&&[ $flipCoin2 -eq 0 ]&&[ $flipCoin3 -eq 0 ]
        then
                triplet[THH]=$thh
                thh=$(($thh+1))
        elif [ $flipCoin1 -eq 1 ]&&[ $flipCoin2 -eq 0 ]&&[ $flipCoin3 -eq 1 ]
        then
                triplet[THT]=$tht
                tht=$(($tht+1))
        elif [ $flipCoin1 -eq 1 ]&&[ $flipCoin2 -eq 1 ]&&[ $flipCoin3 -eq 0 ]
        then
                triplet[TTH]=$tth
                tth=$(($tth+1))
        else
                triplet[TTT]=$ttt
                ttt=$(($ttt+1))
	fi
	n=$(($n-1))
done
for key in ${!triplet[@]}
do
        echo "$key : ${triplet[$key]} %"
done
