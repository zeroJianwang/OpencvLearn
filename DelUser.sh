#!/usr/bin/bash
#delete a user from input

read -p "Please input user name: " UserName
id $UserName &>/dev/null
if [ $? -ne 0 ]; then
        echo "User:$UserName  not found"
        exit 1
fi

read -p "Are you sure to delete user:$UserName? [y/n]" Action
case "$Action" in
        y|Y|yes|YES)
        userdel -r $UserName
        echo "OK!"
        ;;
n|N|No)
        echo "give up"
        exit 1
        ;;
*)
        echo "please input yes|Y|N"
        ;;
