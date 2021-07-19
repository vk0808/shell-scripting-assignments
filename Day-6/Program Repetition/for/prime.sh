#! /bin/bash -x

num=$((RANDOM%101))


is_Prime=0


for((index=2; index<=num/2; index++))
do
        if [ $((num % index)) -eq $is_Prime ]; then
                echo "$num is not a prime number."
                exit
        fi
done

echo "$num is a prime number."
