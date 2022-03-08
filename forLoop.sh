#!/bin/bash 

for command in date pwd
do
    echo "Output of $command is: "
    $command
done

for file in $(ls /home/dhruv/Desktop/linux/*.sh)
do
    echo "script files are $file"
done

for file in /home/dhruv/Desktop/linux/*.sh
do
    echo "script files are $file"
done

file1=/etc/passwd
user=$1

for user in $file1
do 
    [ -f $user ] && echo "User found" || echo "user is not found"
done