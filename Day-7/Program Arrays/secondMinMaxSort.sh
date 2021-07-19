#! /bin/bash -x


# Declare an array
declare -a array
declare -a temp


# Assign random values to array
for((i=0;i<10;i++))
do
	array[$i]=${RANDOM::3}
done


# Create length of array
len=${#array[*]}


# Function to sort
function sortArray() {

	for m in ${!array[*]}
	do
		for n in ${!array[*]}

	        do
           		if [[ ${array[n]} -lt ${array[n+1]} ]]
            		then
                   		num=${array[n]}
                   		array[n]=${array[n+1]}
                   		array[n+1]=$num
            		fi
        	done
	done
	echo Sorted Array: ${array[@]}
	echo Second largest: ${array[1]}
	echo Second smallest: ${array[len-2]}
}


# Print results
echo Array: ${array[*]}
sortArray
