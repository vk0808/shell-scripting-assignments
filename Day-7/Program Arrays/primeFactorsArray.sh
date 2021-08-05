#! /bin/bash -x

# Random number btw 2-101
#num=$((RANDOM%1000 + 1))
num=12

declare -a factors

echo "Prime factors of $num :"


# loop to find factors
for((i=2; i*i<=$num; i++))
do
        while [ $((num % i)) -eq 0 ]
        do
                factors[$((k++))]=$i
                num=$((num/i))
        done
done


# print left prime no
if [ $num -gt 2 ]; then
        factors[$k]=$num
fi


echo ${factors[*]}
