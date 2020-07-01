#!/usr/bin/bash
#######################################################
#this is a scripte creating a serial user by number
######################################################
read -p "Please input a number:" number

if [ "$number" = ^[0-9]+$ ];then
        echo "what you input is not a number"
        exit
fi

read -p "Please input prefix:" prefix
if [ -z "$prefix" ];then
        echo "error prefixx"
        exit
fi

for i in `seq $number`
do
        username = $prefix$i
        useradd $username
        echo "123" |passwd --stdin $username &>/dev/null
        if [ $? -eq 0];then
                echo "User:$username is create"
        fi
done
