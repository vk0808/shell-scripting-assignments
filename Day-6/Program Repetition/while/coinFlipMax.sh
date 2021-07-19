#! /bin/bash -x

headCount=0
tailCount=0
count=0
WIN_COUNT=11
HEAD=1


while [ $count -lt $WIN_COUNT ]
do
        coinFlip=$(( $RANDOM %2 ))

        if [ $coinFlip -eq $HEAD ]; then
                (( headCount++ ))
                echo "heads $headCount"
        else
                (( tailCount++ ))
                echo "tails $tailCount"
        fi

        if [ $headCount -gt $tailCount ]; then
                count=$headCount
        else
                count=$tailCount
        fi
done
