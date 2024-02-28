#!/bin/bash

# function to add user
function add_user {
    read -p "Enter the username: " username
    if id "$username" 2>/dev/null; then
        echo "$username already exists"
    else
        sudo useradd "$username"
        read -sp "Enter password for $username: " password
        echo "username created successfully"
    fi
}

# function to delete existing user
function delete_user {
    read -p "Enter the username to delete: " username
    if id "username" 2>/dev/null; then
        sudo userdel "$username"
        echo ""$username" deleted successfully"
    else
        echo "Username does not exists"
        exit 1
    fi
}

# function to reset the password of the user
function reset_password {
   read -p "Enter the username to change password: " username
    if id "$username" 2>/dev/null; then
        sudo passwd "$username"
        echo ""$username" password changed successfully"
    else
        echo "Username does not exists"
        exit 1
    fi
}

# function to show user name
function show_users {
    echo "Users in the system are"
    awk -F: '{print "NR-  " $1}' /etc/passwd
    if [ $? -ne 0 ]; then
    echo "Error in function"
    exit 1
    fi
}
add_user
show_users
