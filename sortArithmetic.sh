#!/bin/bash -x
read -p "Enter three numbers: " a b c
declare -A myDict
echo "a:$a b:$b c:$c"
myDict[case1]=$(($a+$b*$c))			#`awk 'BEGIN{print '$a'+'$b'*'$c'}'`
echo "a+b*c:"${myDict[case1]}           #$(($a+$b*$c))
myDict[case2]=$(($a*$b+$c))			#`awk 'BEGIN{print '$a'*'$b'+'$c'}'`
echo "a*b+c:"${myDict[case2]}           #$(($a*$b+$c))
myDict[case3]=$(($c+$a/$b))		#`awk 'BEGIN{print '$c'+'$a'/'$b'}'`
echo "c+a/b:"${myDict[case3]}           #$(($c+$a/$b))
myDict[case4]=$(($a%$b+$c))		#`awk 'BEGIN{print '$a'%'$b'+'$c'}'`
echo "a%b+c:"${myDict[case4]}           #$(($a%$b+$c))
for (( count=0 ; count<4 ; count++ ))
do
	myArray[$count]=${myDict["case"$((count+1))]}
done
echo ${myDict[@]}
echo ${myArray[@]}
for (( counti=0 ; counti<4 ; counti++ ))
do
        for (( countj=$(($counti+1)) ; countj<4 ; countj++ ))
        do
                if (( ${myArray[counti]} < ${myArray[countj]} )); then
                        a=${myArray[counti]}
                        myArray[$counti]=${myArray[countj]}
                        myArray[$countj]=$a
                fi
        done
done
echo "Descending Order: "${myArray[@]}
