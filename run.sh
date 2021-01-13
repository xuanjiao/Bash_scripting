#!/bin/bash
while [ 1 ]
do
cat<<EOF

*************************************************
* 1.	Backup Source code
* 2.	Unzip and classify file
* 3.	Display disk and memory usage
* 4.	Create multiple users
* q.	Quit
*************************************************
EOF
read KEY

case $KEY in
1)
code_backup/code_backup.sh
;;

2) 
file_unzip/file_unzip.sh 
;;

3)
display_usage/display_usage.sh
;;

4)
create_users/create_users.sh
;;

q)	
break 
;;

*)
echo "Unknown key."
;;

esac

done
