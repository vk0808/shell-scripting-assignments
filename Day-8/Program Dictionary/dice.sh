#! /bin/bash -x

# Variable
reach=0

# Declare a dictionary
declare -A dice


# Loop to create blank dictionary
for((i=1; i<=6; i++))
do
	dice[$i]=0
done


# Loop to generate random value on each dice roll and store the respective counts in dictionary
while [ $reach -ne 1 ]
do
	num=$((RANDOM%6+1))

	for((j=1; j<=6; j++))
	do
		if [ $num -eq $j ]; then
			dice[$j]=$((dice[$j]+1))
			if [ ${dice[$j]} -ge 10 ]; then
				reach=1
			fi
		fi
	done
done



# Loop to print dictionary
for key in ${!dice[*]}
do
	echo face $key: ${dice[$key]}
done



# Finding max and min values
max=0
min=${RANDOM::3}

for((i=1; i<=6; i++))
do
	if [ ${dice[$i]} -gt $max ]; then
		max=${dice[$i]}
		maxFace=$i
	fi


        if [ ${dice[$i]} -lt $min ]; then
                min=${dice[$i]}
                minFace=$i
        fi
done


echo "Maximum rolled number $maxFace with $max times"
echo "Minimum rolled number $minFace with $min times"
