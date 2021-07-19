#! /bin/bash -x

GOAL=200
INITIAL_AMT=100
BET_AMT=1
BROKE=0
WIN=1
LOSS=0


bal_Amt=$INITIAL_AMT
win_Count=0
no_Of_Bet=0


while [ $bal_Amt -gt $BROKE ] && [ $bal_Amt -lt $GOAL ]
do
        bet=$(( RANDOM%2 ))
        if [ $bet -eq $WIN ]; then
                bal_Amt=$(( bal_Amt + BET_AMT ))
                (( win_Count++ ))
        else
                bal_Amt=$(( bal_Amt - BET_AMT ))
        fi
        (( no_Of_Bet++ ))

done

echo "Win Count: $win_Count"
echo "No of bets: $no_Of_Bet"
