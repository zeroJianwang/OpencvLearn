#!/usr/bin/bash
#delete a user from input

read -p "Please input user name: " UserName
id $UserName &>/dev/null
if [ $? -ne 0 ]; then
        echo "User:$UserName  not found"
        exit 1
fi

read -p "Are you sure to delete user:$UserName? [y/n]" Action
if ["$Action" != "y"];then
        userdel -r $UserName
        echo "OK!"
else
        echo "Give up"
        exit 1
fi
