#!/bin/bash

while IFS= read -r LINE; do
	echo "$LINE" | sed 's/:/ /g' | cut -d" " -f1 | xargs mkdir  
done < "$1"
