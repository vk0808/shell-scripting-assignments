range=$((RANDOM%100 + 2))


is_Prime=0


for((n=2; n<=$range; n++))
do

        check=0

        for((index=2; index<$n; index++))
        do
                if [ $((n % index)) -eq $is_Prime ]; then
                        check=1
                        break
                fi
        done
        if [ $check -eq 0 ]; then
                echo $n
        fi
done
