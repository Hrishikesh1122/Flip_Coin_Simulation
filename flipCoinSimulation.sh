#!/bin/bash
isHead=1
isTails=0
flip=$((RANDOM%2))
if [ $flip -eq $isHead ]
then
	echo "Heads"
else
	echo "Tails"
fi
