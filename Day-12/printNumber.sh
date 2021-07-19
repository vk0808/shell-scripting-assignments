#! /bin/bash -x

echo "Printing numbers 1-100"

# Variables
START=1
FINISH=100


# Loop for printing
for((i=$START; i<=$FINISH; i++))
do

	# Check if it's divisible by 3 and 5, then print FizzBuzz
	if [ $((i % 3)) -eq 0 -a $((i % 5)) -eq 0 ]; then
		echo "FizzBuzz"

	# Check if it's divisible by 5, then print Buzz
	elif [ $((i % 5)) -eq 0 ]; then
		echo "Buzz"

	# Check if it's divisible by 3, then print Fizz
	elif [ $((i % 3)) -eq 0 ]; then
		echo "Fizz"
	else
		echo $i
	fi
done
