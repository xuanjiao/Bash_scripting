#!/bin/bash
read -p "Please enter the server name: " NAME
IP=`cat remote_server/ip_list.txt  | awk -F '|'  '{ if ($1=="'$NAME'") print $2}'`
echo "Loging in to remote server: $IP..."
ssh ${NAME}@${IP}
echo "Done."
