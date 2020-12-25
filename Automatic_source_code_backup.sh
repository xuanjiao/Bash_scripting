#!/bin/sh
ORI_DIR=$1
NEW_DIR=/home/pi/c_str/${1##*/}
COMP_DIR=/home/pi/share

if [ -d ${NEW_DIR} ]
then
	rm ${NEW_DIR}/* 		# If the directory exists, empty this directory.
else
	mkdir -p ${NEW_DIR}		# If the directory not exits, create the directory.
fi

echo "Copying ${ORI_DIR} to ${NEW_DIR}"
cp ${ORI_DIR}/*.c ${NEW_DIR} # Copy files
echo "Done."

echo "Compressing.."

mkdir -p ${COMP_DIR}

tar -zcf ${NEW_DIR} -- directory ${COMP_DIR}

