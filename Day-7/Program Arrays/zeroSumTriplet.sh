#! /bin/bash -x


# Function to find triple integers whose sum equals to zero
function findTriplets() {
	local a=("$@")
	local n=${#a[*]}

    	found=0

    	for((i=0; i<=n-2; i++))
	do
	        for((j=i+1; j<n-1; j++))
		do
	        	for((k=j+1; k<n; k++))
			do
	                	if [ $((a[i] + a[j] + a[k])) -eq 0 ]; then
	                    		echo ${a[i]} ${a[j]} ${a[k]}
	                    		found=1
				fi
			done
		done
	done

   	if [ $found -eq 0 ]; then
        	echo "triplets does not exist "
	fi

}


a1=(0 -1 2 -3 1)
# a2=(1 -2 1 0 5)
# a3=(-1 0 1 2 -1 -4)


findTriplets "${a1[@]}"
