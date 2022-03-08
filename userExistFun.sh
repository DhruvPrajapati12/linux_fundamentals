#!/bin/bash

# path=/etc/passwd

# userExist() {
#     read -p "Enter the user name: " name
#     grep "^$name" $path >/dev/null  
#     status=$?
#     if test $status -eq 0
#     then
#         echo "user exist";
#     else 
#         echo "user does exist";
#     fi 
# }

# userExist

source /home/dhruv/Desktop/linux/lib.sh

echo "Invoking the function"
userExist
echo "done"

rootChecking