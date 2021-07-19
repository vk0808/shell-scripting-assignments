#! /bin/bash -x

echo "Welcome to Rock Paper and Scissor game"

# Variables
play=1


# Function to get names of the choice
function getNames(){
	local n=$1

	case $n in
		0|"r") echo "Rock" ;;
		1|"p") echo "Paper" ;;
		2|"s") echo "Scissor" ;;
		*) echo "--"
	esac
}


function getWinner() {
	local u=$1
	local c=$2

	if [ "$u" == "r" -o "$u" == "p" -o "$u" == "s" -o $u == 0 -o $u == 1 -o $u == 2 ]; then

		if [ $c -eq 0 -a "$u" == "p" ]; then
			echo "Paper beats Rocks, Winner is User"

		elif [ $c -eq 0 -a "$u" == "s" ]; then
	                echo "Rock beats Scissor, Winner is Computer"

		elif [ $c -eq 1 -a "$u" == "r" ]; then
	                echo "Paper beats Rocks, Winner is Computer"

		elif [ $c -eq 1 -a "$u" == "s" ]; then
	                echo "Scissor beats Paper, Winner is User"

		elif [ $c -eq 2 -a "$u" == "r" ]; then
	                echo "Rocks beats Scissor, Winner is User"

		elif [ $c -eq 2 -a "$u" == "p" ]; then
			echo "Scissor beats Paper, Winner is Computer"

		else
			echo "Tie"
		fi
	else
		echo "User entered wrong input"

	fi


}


while [ $play -eq 1 ];
do
	# Read user's choice
	read -p "Enter your choice (r/p/s) (0/1/2): " user
	computer=$(( RANDOM % 3 ))

	echo "User: $(getNames $user) Computer: $(getNames $computer)"

	getWinner $user $computer

	echo -e "\n"
	read -p "Do you want to continue: if yes enter 1 or else 0 -" play

done
