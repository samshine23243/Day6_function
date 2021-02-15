echo "function problems"
sum=0
pallindrome () {
read -p "Enter number:" N
N1=$N
while [ $N -gt 0 ]
do
   temp=$(($N%10))
   sum=$(($sum*10+$temp))
   N=$(($N/10))
done
if [ $N1 -eq $sum ]
then
   echo "its pallindrome"
else
   echo "not pallindrome"
fi
}

pallindrome
