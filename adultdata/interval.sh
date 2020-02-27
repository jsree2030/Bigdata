count=0
echo "Enter the lower limit"
read ll
echo "Enter the upper limit"
read ul
for i in `cat adult.csv|grep '^[0-9]'|cut -d ',' -f 1`
	do
	if [ $i -ge $ll ] && [ $i -lt $ul ]
	then 
		count=`echo "$count + 1"|bc`
	fi
done
echo "The number of persons in the age limit of [$ll - $ul) is $count"
