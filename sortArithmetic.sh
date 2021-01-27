#!/bin/bash -x
read -p "Enter three numbers: " a b c
echo "a:$a b:$b c:$c"
output1=`awk 'BEGIN{print '$a'+'$b'*'$c'}'`
echo "a+b*c:"$output1           #$(($a+$b*$c))
output2=`awk 'BEGIN{print '$a'*'$b'+'$c'}'`
echo "a*b+c:"$output2           #$(($a*$b+$c))
output3=`awk 'BEGIN{print '$c'+'$a'/'$b'}'`
echo "c+a/b:"$output3           #$(($c+$a/$b))
output4=`awk 'BEGIN{print '$a'%'$b'+'$c'}'`
echo "a%b+c:"$output4           #$(($a%$b+$c))
