#! /bin/bash -x

num=$((RANDOM%21))


power=1
ZERO_INDEX=0


for (( index=0;index<=num;index++ ))
do
        if [ $index -eq $ZERO_INDEX ]; then
                echo $power
        else
                power=$(( power*2 ))
                echo $power
        fi
done
