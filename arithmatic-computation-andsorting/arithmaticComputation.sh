#!/bin/bash

#read the values from user

read -p "value of a: " a;
read -p "value of b: " b;
read -p "value of c: " c;

#Compute operations

compute1=$(( $a+$b*$c ))
compute2=$(( $a*$b+$c ))
compute3=$(( $c+$a/$b ))
compute4=$(( $a%$b+$c ))

#Declaring dictionary

declare -A computeDict

#store the Operations into the dictionary

computeDict[count1]=$compute1
computeDict[count2]=$compute2
computeDict[count3]=$compute3
computeDict[count4]=$compute4

echo "Operations storing into the dictionary : ${computeDict[@]}"
count=0

#read values from dictonary into array

for i in "${computeDict[@]}"
do

        array[((count++))]=$i
done

#Print the array

echo "Array is ${array[@]}"

#sorting the computational values ascending order

for (( i=0;i<4;i++ ))
do
        for (( j = 0;j<4-i-1;j++ ))
        do
                if [ ${array[j]} -gt ${array[$((j+1))]} ]
                then
                        temp=${array[j]}
                        array[$j]=${array[$((j+1))]}
                        array[$((j+1))]=$temp
                fi
        done
done

echo "Sorted Array in ascending order ${array[*]}"

#sorting the computational values in decending order

for (( i=0;i<4;i++ ))
do
        for (( j=0;j<4-i-1;j++ ))
        do
                if [ ${array[j]} -lt ${array[$((j+1))]} ]
                then
                        temp=${array[j]}
                        arr[$j]=${array[$((j+1))]}
                        arr[$((j+1))]=$temp
                fi
        done
done

echo "Sorted Array in decending order ${array[*]}"

