#!/bin/bash

read -p "Please enter the path of the compressed file: " FILE 
C_DIR="file_unzip/c_files"
H_DIR="file_unzip/h_files"
C_CNT=0
H_CNT=0

echo "Decompress files"
if [ -e $C_DIR ]; then
	rm -r $C_DIR
	echo "rm -r $C_DIR" 
fi
mkdir $C_DIR

if [ -e $H_DIR ]; then
	rm -r $H_DIR
	echo "rm -r $H_DIR"
fi
mkdir ${H_DIR}

if [ -e test ]; then
	rm -r test
	echo "rm -r test"
fi
mkdir test	# Create decompress folders

if [ -e $FILE ]; then
	tar -xzf $FILE -C ./test --strip-components 1 # Decompress files
else
	echo "$FILE not exists"
fi

echo "Classify files"
if [ -e test ]; then
	for xfile in test/*
	do
		case ${xfile##*.} in
			c) cp $xfile $C_DIR ;;
			h) cp $xfile $H_DIR ;;
			*)	;;
		esac
	done		
else
	echo "Test dir error"
fi
echo "Done"

