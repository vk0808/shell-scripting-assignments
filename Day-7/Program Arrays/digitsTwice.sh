#! /bin/bash -x

declare -a twice

# Input to take range
# read -p "Enter range starting range: " start
# read -p "Enter range ending range: " end


# Random range
start=${RANDOM::2}
end=${RANDOM::2}


pos=0


echo "Range: $start-$end"


for((i=$start; i<=$end; i++))
do
	if [ $((i % 11)) -eq 0 ]; then
		twice[((pos++))]=$i
	fi
done



if [ ${#twice} -eq 0 ]; then
	echo "no twice repeating digits found"
else
	echo ${twice[*]}
fi
