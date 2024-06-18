#!/bin/bash

# Function to check if user exists
function check_user() {
  read -p "Enter the username: " username
  if id "$username"; then
    echo "User already exists"
  else
    sudo useradd "$username"
    echo "$username added successfully "
  fi
}

# Function to delete user
function delete_user() {
  read -p "Enter the username: " username
  if id "$username"; then
    sudo userdel "$username"
    echo "User deleted successfully"
  else
    echo "User does not exist"
    exit 1
  fi
}

# Function to set password for user
function users_password() {
   read -p "Enter the user for which password is to be set: " username
   if id "$username"; then
           read -p "Enter the lenght of the password: " length
           password= openssl rand -base64 48 | cut -c1-$length
           sleep 2
           echo "password provided by system is '$password'"
           sudo passwd "$username"
   else
           echo "User does not exist"
   fi
}


# Check first argument
if [[ "$1" == "user" ]]; then
  check_user
elif [[ "$1" == "delete" ]]; then
  delete_user
elif [[ "$1" == "password" ]]; then
  users_password
else
  echo "Invalid argument. Usage: $0 (user | delete)"
fi
