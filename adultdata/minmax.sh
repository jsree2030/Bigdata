max=`cat adult.csv|grep '^[0-9]'|cut -d ',' -f 1|sort -nr|head -n 1`
min=`cat adult.csv|grep '^[0-9]'|cut -d ',' -f 1|sort -n|head -n 1`

echo "Minimum age group is $min\n Maximum age group is $max"
