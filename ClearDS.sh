#!/bin/bash
#################################################
# Name: ClearDS.sh
# Version: 1
#
# Script to remove .DS_Store and ._* files from a given directory on mac
#
##################################################

while [ "$1" != "" ]; do
	p=`dirname "$1"`
	f=`basename "$1"`
	cd "$p"

	if [ -d "$f" ]; then
		find "$p/$f" -name ._* -delete
		find "$p/$f" -name .DS_Store -delete
	fi
  
	shift
done
