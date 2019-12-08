#!/bin/bash
if [[ $1 == "-h" || $1 == "--help" ]];then
	echo "Usage : "
	echo "./renamer python_ milad  ## to replace python_ string to all files and directores with milad."
	echo "./renamer python         ## to add python_ string to start of all files and directories."
	exit 1
fi
Location=$(pwd)
Location=$Location"/*"
if [ $# -lt 2  ];then
	for f in $Location
	do
		filename=$(echo "$f" | sed -r "s/.*\///")
		newfile="$1"$filename
		$(mv $filename $newfile)
	done
else
	for f in $Location
	do
		filename=$(echo "$f" | sed -r "s/.*\///")
		if [[ "$filename" == *"$1"* ]];then
			newfile=$(echo $filename | sed -e "s/$1/$2/")
			$(mv $filename $newfile)
		fi
	done
	echo "done"
fi

