#!/bin/bash
isHead=1
isTails=0
CountH=0
CountT=0
for ((i=0;i<=10;i++))
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
echo "Out of 10 flips heads won $CountH times and Tails won $CountT times "
