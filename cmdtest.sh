#!/bin/bash

#testing command line arguments
cmd() {
    var=$1
    echo "the name of script is $0"
    echo "first argument is $1"
    echo "secind argument is $2"
    echo "total no of argument passed are $#"
    echo "value of argument are $*"
    echo "value of argument are $@"
}
echo "function call"
cmd city
echo "Givinf=g call second time"
cmd city kia nexa bmw