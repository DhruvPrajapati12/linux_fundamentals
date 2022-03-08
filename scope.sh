#!/bin/bash
#variable scope

scope() {
    local var=$1
    echo "within function the value of var is $var"
}

var=outside

echo "before calling function value of var is $var"
scope local 
echo "after function call value of var is $var"