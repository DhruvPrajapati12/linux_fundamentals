#!/bin/bash 

#Demo shell script of for loop

# for var in 1 2 3 4 5 6 7 8 9 10
# do
#     echo $var 
# done

# for var in {1..10}
# do
#     echo $var 
# done

# for var in 1 2 3 4 5
# do
#     echo "Welcome to einfochips $var time" 
# done

# for ((i = 1; i <= 12 ; i++))
# do
#     echo "Welcome to einfochips $i time" 
# done

for day in mon tue wed thur fri sat sund
do 
    echo "have a great $day"
done