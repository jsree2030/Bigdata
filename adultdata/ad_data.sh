max=`cat adult.csv|grep '^[-1-9]'|cut -d ',' -f 1|sort -nr|head -n 1`
min=`cat adult.csv|grep '^[0-9]'|cut -d ',' -f 1|sort -n|head -n 1`
cfreq=0 #cumulative Frequency
x=0 #Midpoint
fx=0 #cumulative fre *Midpoint
x2=0
fx2=0
cfx=0
cfx2=0
echo "Minimum age group is $min\n Maximum age group is $max"
echo "---------------------------"
echo "Enter the class interval"
read range
echo "The class interval is $range"
start=$min
start1=`echo "$min+$range"|bc`
echo "CInterval    Freq   CFreq   x        fx            x^2             f.x^2 "
echo "-----------------------------------------------------------------------------"
for i in `seq $start1 $range $max`
do
count=0
for j in `cat adult.csv|grep '^[0-9]'|cut -d ',' -f 1`
do
 if [ $j -ge $start ] && [ $j -lt $i ]
 then
 count=`echo "$count +1"|bc`
 fi
done
cfreq=`echo "$cfreq + $count"|bc -l`
x=`echo "scale=4;($start +$i -1) / 2"|bc -l`
fx=`echo "scale=4;$x * $count "|bc -l` 
x2=`echo "scale=4;$x^2"|bc -l`
fx2=`echo "scale=4;$count*$x2"|bc -l`
cfx=`echo "scale=4;$cfx+$fx"|bc`
cfx2=`echo "scale=4;$cfx2+$fx2"|bc`
echo "[ $start - $i ]  $count  $cfreq   $x   $fx   $x2   $fx2"
start=$i
done if [ $i -lt $max ]
 then
count=0
for k in `cat adult.csv|grep '^[0-9]'|cut -d ',' -f 1`
 do
 if [ $k -ge $i ] && [ $k -le $max ]
 then
     count=`echo "$count + 1"|bc`
 fi
done
fi
cfreq=`echo "$cfreq + $count"|bc -l`
x=`echo "scale=4;($i + $max) / 2"|bc -l`
fx=`echo "scale=4;$x * $count "|bc -l`
x2=`echo "scale=4;$x^2"|bc -l`
fx2=`echo "scale=4;$count*$x2"|bc -l`
cfx=`echo "scale=4;$cfx+$fx"|bc -l`
cfx2=`echo "scale=4;$cfx2+$fx2"|bc -l`
echo "[ $i - $max ]  $count  $cfreq   $x   $fx   $x2   $fx2"  

echo "Sum of fx is $cfx"
echo "sum of fx^2 is $cfx2"

echo "--------------------------------------------------"

mean=`echo "scale=4;$cfx2/$cfx"|bc`
echo "The mean is $mean"
                                   
