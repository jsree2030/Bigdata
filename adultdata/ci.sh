max=`cat adult.csv|grep '^[0-9]'|cut -d ',' -f 1|sort -nr|head -n 1`
min=`cat adult.csv|grep '^[0-9]'|cut -d ',' -f 1|sort -n|head -n 1`

echo "The minimum value is $min and the Maximum value is $max"
echo "------------------------"
echo "Enter the class interval"
read ci
echo "------------------------"
ll=`echo "$min"`
start=$min
start1=`echo "$min+$ci"|bc`
for i in `seq $start1 $ci $max`
do
echo "[$start - $i)"
start=$i
done
if [ $i -lt $max ]
then
echo "[$i - $max)"
fi
