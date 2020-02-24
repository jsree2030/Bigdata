#program to display maximum of 2 numbers
echo "Enter First Number"
read x
echo "Enter Second  Number"
read y
if [ $x -ge $y ]
then
echo "$x is Maimum"
else
echo "$y is Maximum"
fi
