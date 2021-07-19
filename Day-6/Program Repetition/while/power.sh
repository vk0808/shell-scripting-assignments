#! /bin/bash -x

num=$((RANDOM%11))

index=0
power=1
ZERO_INDEX=0
MAX_PW=256

while [ $index -le $num ] && [ $power -lt $MAX_PW ]
do
        if [ $index -eq $ZERO_INDEX ]; then
                echo $power
        else
                power=$(( power*2 ))
                echo $power
        fi
        (( index++ ))
done
