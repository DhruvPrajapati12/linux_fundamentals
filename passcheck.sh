#!/bin/bash

read -s -p "Enter the password: " pass
if test "$pass" ==  "einfochips"
then
	echo "You are verified"
else
	echo "Enter correct password"
fi
