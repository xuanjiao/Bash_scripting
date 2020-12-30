#!/bin/bash
while [ 1 ]
do
cat<<EOF

*************************************************
* 1.	Source code backup
* 2.	File unzip and classify
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

q)	
break 
;;

*)
echo "Unknown key."
;;

esac

done
