#! /bin/bash -x

coinFlip=$(( $RANDOM %2 ))

if [ $coinFlip -eq 1 ];
then
	echo "heads"
else
	echo "tails"
fi
