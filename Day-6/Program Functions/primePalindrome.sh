#! /bin/bash -x

# Random number btw 2-101
num=$((RANDOM%100 + 2))


# Function to check if a number is prime or not
function checkPrime() {

	local n=$1

	local PRIME=1
	local NOT_PRIME=0


	for((index=2; index<=n/2; index++))
	do
        	if [ $((n % index)) -eq $NOT_PRIME ]; then
                	echo $NOT_PRIME
                	exit
        	fi
	done

	echo $PRIME
}


# Function to get the palindrome of a number
function getPalindrome() {
	rem=""
	rev=0

	local temp=$1

	for i in $temp
	do
		while [ "$i" -gt 0 ]
		do
			rem=$((i%10))
			rev=$((rev*10+rem))
			i=$((i/10))
		done
	done
	echo $rev
}


# Function call
prime1=$(checkPrime $num)


# Check if the number is prime then show that its palindrome is also prime
if [ $prime1 -eq 1 ]; then

	# Function call
	pal=$(getPalindrome $num)
	prime2=$(checkPrime $pal)

	if [ $prime2 -eq 1 ]; then
		echo "$num $pal are prime numbers"
	else
		echo "$num is a prime, but $pal is not a prime"
	fi
else
	echo "$num is not a prime"
fi
