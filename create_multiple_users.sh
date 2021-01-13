#!/bin/bash

read -p "Please enter the user name: " name
read -p "Please enter the number of new user: " number

for (( i=0; i<number;i++ ))
do
	# Add a user. Don't display error message.
	adduser ${name}$i 2>/dev/null
	 
done
