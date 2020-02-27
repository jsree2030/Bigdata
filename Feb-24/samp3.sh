echo "enter how many records you wamt to enter"
read n
i=1
empid=100
while [ $i -le $n ]
do
echo "Enter name"
read name
echo "Basic"
read basic
((empid++))
((i++))
echo "$empid|$name|$basic">>emp.txt
done
