#!/bin/bash
isHead=1
isTails=0
CountH=0
CountT=0
function Play()
{
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
}
Play
Diff=$(($CountH-$CountT))
if [ $Diff -lt 0 ]
then
	Diff=$(($Diff*-1))
	echo "Tails won by $Diff times. "
	exit
elif [ $Diff -gt 0 ]
then
	echo "Heads Won by $Diff times. "
	exit
else
	echo "Tie"
	while [[ $Diff -gt 0 && $Diff -lt 2 ]]
	do
	Play
	done
	exit
fi




