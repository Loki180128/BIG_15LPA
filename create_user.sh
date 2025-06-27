#!/bin/bash


<< HELP

this is a shell script to create users


HELP


echo "******creation of user*******"

read -p "enter the username:" username  

read -p "enter the password:" password

sudo useradd -m "$username"

echo -e "$password" | sudo passwd "$username"


echo "**** CREATION OF USER COMPLETED ****"

