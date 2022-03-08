#!/bin/bash

read -p "Enter the domain name: "
domain_name
dig $domain_name
read -s -p "ENter password: " my_pass
echo "My password is $my_pass"


read -p "Enter three values: " n1 n2 n3
echo $n1 $n2 $n3

nameserver="1.com 2.com 3.com"
read -r p1 p2 p3 <<< $nameserver

echo $p1 $p2 $p3
