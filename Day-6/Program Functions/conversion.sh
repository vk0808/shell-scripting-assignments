#! /bin/bash -x

function degreeF(){

	read -p "Enter C temperature: " dc

	if [[ $dc -ge 0 && $dc -le 100 ]]; then
		df=$(echo $dc | awk '{ print ($1 * 9/5) + 32 }')
		echo $df
	else
		echo "Enter within range 0-100"
	fi
}

function degreeC(){

	read -p "Enter F temperature: " df

	if [[ $df -ge 32 && $df -le 212 ]]; then
		dc=$(echo $df | awk '{ print ($1 - 32) * 5/9 }')
		echo $dc
	else
		echo "Enter within range 32-212"
	fi

}

echo "Temperature Conversion"
echo "1. C-F Scale"
echo "2. F-C Scale "
read -p "Choose: " choice

case $choice in
	1) echo $(degreeF) degF ;;
	2) echo $(degreeC) degC ;;
esac
