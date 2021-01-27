#!/bin/bash -x
read -p "Enter three numbers: " a b c
declare -A myDict
echo "a:$a b:$b c:$c"
myDict[case1]=`awk 'BEGIN{print '$a'+'$b'*'$c'}'`
echo "a+b*c:"${myDict[case1]}           #$(($a+$b*$c))
myDict[case2]=`awk 'BEGIN{print '$a'*'$b'+'$c'}'`
echo "a*b+c:"${myDict[case2]}           #$(($a*$b+$c))
myDict[case3]=`awk 'BEGIN{print '$c'+'$a'/'$b'}'`
echo "c+a/b:"${myDict[case3]}           #$(($c+$a/$b))
myDict[case4]=`awk 'BEGIN{print '$a'%'$b'+'$c'}'`
echo "a%b+c:"${myDict[case4]}           #$(($a%$b+$c))
