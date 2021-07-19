#! /bin/bash -x

day=$((RANDOM%30+1))
month=$((RANDOM%12+1))

combined=0
res="false"


MAR=3
JUN=6


if [ $month -ge $MAR -a $month -le $JUN ]; then
	lastDay=$((30 + (Month % 2)))
	if [ $day -ge 1 -a $day -le $lastDay ]; then
		combined=$(((month * 100) + day))
		if [ $combined -ge 320 -a $combined -le 620 ]; then
			res="true"
		else
			res="false"
		fi
        fi
fi


echo Day: $day, Month: $month, $res
