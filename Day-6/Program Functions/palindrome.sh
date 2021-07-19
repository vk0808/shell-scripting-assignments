#! /bin/bash -x

# Random number btw 11-20
num1=$((RANDOM%100))
num2=$((RANDOM%100))

#num1=171
#num2=171

rem=""
rev=0


function checkPalindrome() {
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

	if [ $rev -eq $num2 ]; then
		echo 1
	else
		echo 0
	fi
}

pal=$(checkPalindrome $num1)

if [ "$pal" -eq "1" ]; then
	echo "$num1 $num2 are palindromes"
else
	echo "$num1 $num2 are not palindromes"
fi
