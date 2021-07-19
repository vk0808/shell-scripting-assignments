#! /bin/bash -x


guess=-1
low=0
high=100
num=0
YES='yes'
NO='no'


echo "Guess the number game. Think of a number between 1-100"


while [ $guess -ne $low ]
do

	mid=$(( (high + low) /2 ))

	read -p "type yes/no: if number less than $mid - " query

	if [ "$query" = "$YES" ]; then
		high=$mid
	else
		low=$mid
	fi

	if [ $low -eq $((high-1)) ]; then
		guess=$low
	fi

done

echo "The number is $guess"
