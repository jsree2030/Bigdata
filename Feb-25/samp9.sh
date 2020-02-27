count=0
for((i=1;i<=109;i++))
{
if((i%5!=0))
then
#((count++))
#count=`expr $count +1`
count=`echo "$count+1"|bc`
fi
}
echo "Total count not divisible by 5 is $count"
