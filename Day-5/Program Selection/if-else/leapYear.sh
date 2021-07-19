#! /bin/bash -x

year=$((1950 + RANDOM%100))

a=$((year%4))
b=$((year%100))
c=$((year%400))

if [ $a -eq 0 -a $b -ne 0 -o $c -eq 0 ];
then
        echo "$year leap year"
else
        echo "$year not a leap year"
fi
