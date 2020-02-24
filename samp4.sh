while read line 
do
echo "$line"
done<numb.csv
echo "Enter the Minimum age"
read x
echo "Enter the maximum age "
read y
if [age = $x -ge $y ]
then
echo "$x + $y  is Maimum"
else
echo "$y is Maximum"
fi
                       
