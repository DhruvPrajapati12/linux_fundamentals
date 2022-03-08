#!/bin/bash

#Multiplication table script

read -p "Enter the number: " num
for row in {1..10}
do 
    echo "$num * $row = $(($num*$row)) "
done


#Fibonnaci series script

read -p "Enter range: " range

a=1
b=2
c=$((a+b)) 
echo $a
echo $b
echo $c
for (( i=1; i<range-2; i++ ))
do
    a=$b 
    b=$c 
    c=$((a+b)) 
    echo "$c "
done 
