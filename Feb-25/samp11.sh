echo "Enter File name"
read fname
tput clear
while read line
do
c1=`echo $line|cut -c1|tr '[a-z]' '[A-Z]'`
c2=`echo $line|cut -c2-`
echo "$c1$c2">>temp
done<$fname
mv temp $fname


