#!/bin/bash


<<INTRO

This is an exlanation of functions

INTRO

function create_user {

	
read -p "Enter the username:" username
sudo useradd -m $username
echo "User created successfully"

}

for ((i=1; i<=5; i++))
do 
create_user
done 
