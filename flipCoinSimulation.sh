#!/bin/bash 
isHead=1
isTails=0
CountH=0
CountT=0
while [[ $CountH -lt 21 && $CountT -lt 21 ]]
do
	flip=$((RANDOM%2))
	if [ $flip -eq $isHead ]
	then
		echo "Heads"
		CountH=$(($CountH+1))
	else
		echo "Tails"
		CountT=$(($CountT+1))
	fi
done

Diff=$(($CountH-$CountT))
if [ $Diff -lt 0 ]
then
	Diff=$(($Diff*-1))
	echo "Tails won by $Diff times. "
elif [ $Diff -gt 0 ]
then
	echo "Heads Won by $Diff times. "
else
	echo "Tie"
fi


