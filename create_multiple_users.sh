#!/bin/bash

read -p "Please enter the user name: " name
read -p "Please enter the number of new user: " number

for (( i=1; i<=$number;i++ ))
do
	# Check whether a user exists
	if [ `grep -c "${name}$i" /etc/passwd` -ne '0' ]; then
	echo "User ${name}$i already exists"
	
	else 
	# Add a user. Don't display error message.
	sudo useradd ${name}$i 2>/dev/null
	
	# Generate a passward
	passwd=`head -1 /dev/urandom | md5sum | cut -c 1-8`
	
	# Assign passward to each user
	# If succedded, save the user name and passsword to a text file.
	echo "${name}$i:$passwd" | sudo chpasswd && echo -e "${name}${i}\t${passwd}" 1>> ./new_user.txt && echo "New user created: ${name}$i"

	fi 
done
