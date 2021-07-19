#! /bin/bash -x

# Random number btw 1-10
num=$((RANDOM%10 + 1))


# Harmonic number
harmonic=1


for (( index=2;index<=num;index++ ))
do
        harmonic=$(echo $harmonic $index | awk '{print $1 + (1>done

echo 'HN of' $num ':' $harmonic
