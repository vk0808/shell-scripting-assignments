#! /bin/bash -x

# Random number btw 2-101
#num=$((RANDOM%1000 + 1))
num=12

declare -a factors
k=0


echo "Prime factors of $num :"

# even number divisible
while [ $((num % 2)) -eq 0 ]
do
        factors[$((k++))]=2
        num=$((num/2))
	#((k++))
done


# num becames odd
for((i=3; i*i<=$num; i++))
do
        while [ $((num % i)) -eq 0 ]
        do
                factors[$((k++))]=$i
                num=$((num/i))
		#((k++))
        done
done


# print left prime no
if [ $num -gt 2 ]; then
        factors[$k]=$num
fi


echo ${factors[*]}
