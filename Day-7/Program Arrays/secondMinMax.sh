#! /bin/bash -x


# Declare an array
declare -a array


# Assign random values to an array
for((i=0;i<10;i++))
do
	array[$i]=${RANDOM::3}
done



# Function to find second smallest
function findMin() {

	local first=${RANDOM::4}
	local second=${RANDOM::4}

        for key in ${!array[*]}
        do
                if [ ${array[$key]} -lt $first ]; then
			second=$first
			first=${array[$key]}
		elif [ ${array[$key]} -lt $second -a ${array[$key]} -ne $first ]; then
			second=${array[$key]}
		fi
        done
        echo $second
}


# Function to find second largest
function findMax() {

	local first=0
	local second=0

        for key in ${!array[*]}
        do
                if [ ${array[$key]} -gt $first ]; then
			second=$first
			first=${array[$key]}
		elif [ ${array[$key]} -gt $second -a ${array[$key]} -ne $first ]; then
			second=${array[$key]}
		fi
        done
        echo $second

}


# Print results
echo Array: ${array[*]}
echo Second Largest: $(findMax)
echo Second Smallest: $(findMin)

