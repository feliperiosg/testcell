# another first line
# another second line
a=3
b=5
let c=$b**$a
echo $c
echo $(( a**b ))
# space
echo "b/a:" $(echo "$b/$a" | bc -l)
echo "a/b without leading zero:" $(echo "$a/$b" | bc -l)
echo "a/b without leading zero plus %.3f:" $(echo "scale=3; $a/$b" | bc -l)
echo "a/b with leading zero plus %.7f:" $(printf '%.7f' $(echo "$a/$b" | bc -l))
# space
echo "last 1 test:" $(print '%.6f' $(echo "scale=7; 5.01/11.37" | bc -l))
echo "last 2 test:" $(echo "11.37/5.01" | bc -l))
