#!/bin/bash

read -p "Enter the password: " pass
#if test -z $pass OR
if test "$pass" ==  ""
then
    echo "No password"
    exit 1
else
    echo "You have entered"
fi
