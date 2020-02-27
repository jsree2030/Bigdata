sum=0
for i in `seq 1 1 100`
do
sum=`echo "$sum+$i"|bc`
done
echo $sum
