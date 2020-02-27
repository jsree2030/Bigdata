echo "Enter the value of n"
read n
p=1
tput clear
tput cup 12 12
for((i=1;i<=n;i++))
{
p=`echo "$p*$i"|bc`
}
echo "Factorial of $n is $p"
