echo "function problems"
allindrome () {
sum=0
N=$1
N1=$1
while [ $N -gt 0 ]
do
   temp=$(($N%10))
   sum=$(($sum*10+$temp))
   N=$(($N/10))
done
if [ $N1 -eq $sum ]
then
   echo "pallindrome"
   return 1
else
   echo "not pallindrome"
   return 0
fi
}






prime () {
N=$1
for ((i=2;i<N;i++))
do
   temp=$(($N%$i))
   if [ $temp -eq 0 ]
   then
      flag=1
      break
   else
      flag=0
   fi
done
if [ $flag -eq 1 ]
then
   echo "Not prime"
   return 0
else
   echo "prime"
   return 1
fi
}


pallindrome_and_prime () {
read -p "Enter Number : " N
pallindrome $N
ret1=$?
prime $N
ret2=$?
if [ $ret1 -eq 1 ] && [ $ret2 -eq 1 ]
then
   echo "its pallindrome and prime"
else
   echo "its not pallindrome and prime"
fi
}
