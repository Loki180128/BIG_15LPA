#!/bin/bash


<<HELP

TO ADD USER 

HELP

echo "**** Creation of user started ****"
read -p "enter the username:" username
read -p "enter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "**** USER CREATION COMPLETED ****"

sudo userdel $username

echo "**** DELETION OF USER COMPLETED ****"

if [ $(cat /etc/passwd | grep $username | wc |awk '{print $1}') == 0 ];
then 

echo "as wc is 0 the user is deleted" 
else 
	echo "the user was not deleted"
fi


<<UPDATEDVERSION

#!/bin/bash

<<HELP
TO CREATE AND DELETE A USER FOR TESTING PURPOSES
HELP

echo "**** Creation of user started ****"
read -p "Enter the username: " username
read -p "Enter the password: " password

sudo useradd -m "$username"
echo "$username:$password" | sudo chpasswd
echo "**** USER CREATION COMPLETED ****"

# Optional pause for testing
sleep 2

echo "**** Deleting user '$username' ****"
sudo userdel -r "$username"

# Confirm deletion
if grep -q "^$username:" /etc/passwd; then
    echo "⚠️ User still exists!"
else
    echo "✅ User successfully deleted."
fi


UPDATEDVERSION
