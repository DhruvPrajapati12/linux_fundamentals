#!/bin/bash

pass_file=/etc/passwd

if test "$1" == ""
then 
    echo "ERR: formate should be $0 username"
    exit 1
else
    grep "^$1" $pass_file>/dev/null

    status=$?

    if test $status -eq 0
    then    
        echo "user exist"
    else
        echo "user not found"
    fi
fi