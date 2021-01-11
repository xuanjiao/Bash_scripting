#!/bin/bash
while [ 1 ]
do
cat<<EOF

*************************************************
* 1.	Backup Source code
* 2.	Unzip and classify file.
* 3.	Display disk and memory usage.
* q.	Quit
*************************************************
EOF
read KEY

case $KEY in
1)
sh code_backup.sh
;;

2) 
sh file_unzip.sh 
;;

3)
sh display_usage.sh
;;

q)	
break 
;;

*)
echo "Unknown key."
;;

esac

done
