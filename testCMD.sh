#This script is for testing command line arguments

#!/bin/bash

echo "The name of the script is $0"
echo "first argument is $1"
echo "second argument is $2"
echo "third argument is $3"
echo "fourth argument is $4"
echo "Total arguments passed are $#"
echo "value of arguments are $*"
echo "Value of arguments are $@"

#$* and $@ almost they are same, but there is a difference
#$@ $1 $2 ...... $n
#$* $1y$2y$3y ..... y$n
# y = IFS(internal field seperator)  
# y=:

# week.sh mon tue wed
# $*
# mon:tue:wed
# $@
# mon tue wed