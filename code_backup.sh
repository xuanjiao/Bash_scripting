#!/bin/sh
ORI_DIR=$1
NEW_DIR=/home/pi/c_str/${1##*/}
COMP_DIR=/home/pi/share
MYD=`date +%Y_%m_%d`

if [ -d ${NEW_DIR} ]
then
	rm ${NEW_DIR}/* 		# If the directory exists, empty this directory.
else
	mkdir -p ${NEW_DIR}		# If the directory not exits, create the directory.
fi

echo "Back up files"
cp ${ORI_DIR}/*.c ${NEW_DIR} # Copy files to the "/home/c_str" directory.
echo "Done."

echo "Compress files"
mkdir -p ${COMP_DIR}
cd ${NEW_DIR} && tar -zcvf src_${MYD}.tgz . # Compress files and copy them to the "/home/c_comp" directory.
cp src_${MYD}.tgz ${COMP_DIR}
echo "Done."
