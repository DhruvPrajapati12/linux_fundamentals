#invoke the userExist function 

function userExist() {
    path=/etc/passwd
    read -p "Enter the user name: " name
    grep "^$name" $path >/dev/null  
    status=$?
    if test $status -eq 0
    then
        echo "user exist";
    else 
        echo "user does exist";
    fi 
}

function rootChecking() {
    
    if [ $(id -u) -eq 0 ]
    then 
        echo "user is root user";
    else
        echo "user is not root user";
    fi
}