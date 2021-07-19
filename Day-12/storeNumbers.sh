#! /bin/bash -x

# Variable
num=$(( RANDOM % 100 ))

echo "Program to store odd, even and prime numbers from 1-$num"

# indices for array
oi=0
ei=0
pi=0

# Declare arrays
declare -a odd
declare -a even
declare -a prime


# Function to check prime
function checkPrime(){

	local is_Prime=0
	n=$1

	if [ $n -eq 1 ]; then
		echo "0"
	else
		for((index=2; index<=n/2; index++))
		do
		        if [ $((n % index)) -eq $is_Prime ]; then
		                echo "0"
		                exit
		        fi
		done
		echo "1"
	fi
}


# Loop through 1-num and store it into array accordingly
for((i=1; i<=$num; i++))
do
	# Check prime
	if [ "$(checkPrime $i)" == "1" ]; then
		prime[((pi++))]=$i

	# Check even
	elif [ $((i % 2)) -eq 0 ]; then
		even[((ei++))]=$i

	else
		odd[((oi++))]=$i
	fi
done


# Print results
echo "Odd numbers: ${odd[*]}"
echo "Even numbers: ${even[*]}"
echo "Prime numbers: ${prime[*]}"
