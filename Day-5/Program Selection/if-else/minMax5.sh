#! /bin/bash -x

#read -p "Enter a 3 digit value: " num1
#read -p "Enter a 3 digit value: " num2
#read -p "Enter a 3 digit value: " num3
#read -p "Enter a 3 digit value: " num4
#read -p "Enter a 3 digit value: " num5


num1=${RANDOM::3}
num2=${RANDOM::3}
num3=${RANDOM::3}
num4=${RANDOM::3}
num5=${RANDOM::3}



if [ $num2 -gt $num1 ] ; then
        max=$num2
        min=$num1
else
        max=$num1
        min=$num2
fi

if [ $num3 -gt $num4 ]; then
        if [ $num3 -gt $max ]; then
                max=$num3
        fi
        if [ $num4 -lt $min ]; then
                min=$num4
        fi
else
        if [ $num4 -gt $max ]; then
                max=$num4
        fi
        if [ $num3 -lt $min ]; then
                min=$num3
        fi

fi


if [ $num5 -gt $max ]; then
        max=$num5
fi

if [ $num5 -lt $min ]; then
        min=$num5
fi

echo $num1 $num2 $num3 $num4 $num5
echo Maximum $max, Minimum $min
