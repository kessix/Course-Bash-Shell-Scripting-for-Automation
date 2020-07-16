#!/bin/bash
# interate through the files in the Home folder
for file in $(ls -a | sort) ; do
	if [ -d $file ] 
	then
		echo "$file is a directory"
	fi
	if [ -f $file ]
	then
		echo "$file is a file"
	fi
done
