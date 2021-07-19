#! /bin/bash -x

# Random number btw 2-101
num=$((RANDOM%1000 + 1))


echo "Prime factors of $num :"

for((i=2; i<=$num; i++))
do
	if [ $((num % i)) -eq 0 ]; then

		is_Prime=1


		for((j=2; j<=($i/2); j++))
		do
			if [ $((i % j)) -eq 0 ]; then
				is_Prime=0
				break
  			fi
		done

		if [ $is_Prime -eq 1 ]; then
			echo $i
		fi
	fi

done
