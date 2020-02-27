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
  count=0
  for j in `cat adult.csv|grep '^[0-9]'|cut -d ',' -f 1`
          do
          if [ $j -ge $start ] && [ $j -lt $i ]
          then
                  count=`echo "$count + 1"|bc`
         fi
 done
echo "[$start - $i) -> $count"
start=$i
done
if [ $i -lt $max ]
then
  count=0
    for k in `cat adult.csv|grep '^[0-9]'|cut -d ',' -f 1`
            do
            if [ $k -ge $i ] && [ $k -le $max ]
            then
                    count=`echo "$count + 1"|bc`
           fi
   done
echo "[$i - $max] -> $count"
fi
