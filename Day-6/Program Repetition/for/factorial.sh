#! /bin/bash -x

num=$((RANDOM%21))


factorial=1
ZERO_INDEX=0


if [ $num -eq $ZERO_INDEX ]; then
        echo $factorial
fi


for (( index=1;index<=num;index++ ))
do
        factorial=$((factorial * index))
        echo $factorial
done
