#!/bin/bash

read -p "Please enter the employee's name: " FIRST_NAME LAST_NAME
read -p "Please enter the database password: " PASSWD

# Create employees database if not exists
if ! sudo mysql -uroot -p$PASSWD -e "SHOW DATABASES" | grep "employees" ; then
	sudo mysql -uroot -p$PASSWD -e "source sql_query/create_db.sql" && echo "Database employees not exists. Create database."
fi

# Find the employee information in the database
sudo mysql -uroot -p$PASSWD -e "SELECT * FROM employees.employees WHERE first_name = '${FIRST_NAME}' AND last_name = '${LAST_NAME}';"


