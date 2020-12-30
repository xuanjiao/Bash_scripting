#!/bin/bash

read -p "Please enter the path of the source code directory: " ORI_DIR
COMP_DIR=/home/pi/share
MYD=`date +%d_%m_%Y`
NEW_DIR=/home/pi/c_str/${ORI_DIR##*/}

if [ -d $NEW_DIR ]; then
	rm ${NEW_DIR}/* 		# If the directory exists, empty this directory.
else
	mkdir -p $NEW_DIR		# If the directory not exits, create the directory.
fi

echo "Back up files"
cp ${ORI_DIR}/*.c ${NEW_DIR} # Copy files to the "/home/c_str" directory.
echo "Done."

mkdir -p $COMP_DIR
echo "Compress files"
cd $NEW_DIR && tar -zcvf src_${MYD}.tgz . # Compress files and copy them to the "/home/c_comp" directory.
cp src_${MYD}.tgz $COMP_DIR
echo "Done."
