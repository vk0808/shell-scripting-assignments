#! /bin/bash -x

# Declare a dictionary
declare -A birth
declare -A month


# Loop to generate random birthday month for 50 persons and store it in dictionary
for((i=1; i<=50; i++))
do
	birth[person_$i]=$((RANDOM%12+1))
done


# Loop to check persons having birthday same month and store the respectively in another dictionary
for((mon=1; mon<=12; mon++))
do
	for per in ${!birth[*]}
	do
		if [ ${birth[$per]} -eq $mon ]; then
			month[$mon]="${month[$mon]} $per"

		fi
	done
done


# Function to get month
function months(){
	local month=$1

	case $month in
		1) echo "January" ;;
		2) echo "February" ;;
		3) echo "March" ;;
		4) echo "April" ;;
		5) echo "May" ;;
		6) echo "June" ;;
		7) echo "July" ;;
		8) echo "August" ;;
		9) echo "September" ;;
		10) echo "October" ;;
		11) echo "November" ;;
		12) echo "December" ;;
		*) echo '-' ;;
	esac
}



# Loop to print dictionaries both cummulative and individual birthday months

echo -e "Cummulative birthday list \n"
for key in ${!month[*]}
do
	echo "$(months $key)" : ${month[$key]}
done


echo -e '\n'


echo -e "Individual birthday list \n"
for key in ${!birth[*]}
do
	echo $key: "$(months ${birth[$key]})"
done
