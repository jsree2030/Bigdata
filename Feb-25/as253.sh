#Shell program to add the file size in a directory
sum=0
for i in `ls -l|grep '^-'|tr -s " "|cut -d " " -f 5`
do
sum=`echo "$sum + $i"|bc`
done
echo "Total file size in the directory is $sum"
