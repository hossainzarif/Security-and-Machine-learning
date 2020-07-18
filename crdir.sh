#!/bin/bash


if [ $# -eq 0 ]
then
echo -e "Syntax Error!!
syntax:./crdir.sh <dir> <subdir_1> <subdir_2>..<sybdir_N>
For more information type: ./crdir.sh -h"   
elif [ $1 == "-h" ]
then 
echo -e "-./crdir.sh creates files in the Documents directory
--Syntax : ./crdir.sh <dir> <subdir_1> <subdir_2> ... <subdir_N>
-- Parameter 1 <dir> : Name of the parent directory 
--<subdir_N> : name of the nth sub-directory"

else 
	for path in "$@"
	do 
	var+="$path/"
	done
	mkdir -p "$var"
fi

if [ $? -ne 0 ]; then
echo "Syntax Error!!
syntax:./crdir.sh <dir> <subdir_1> <subdir_2>..<sybdir_N>
For more information type: ./crdir.sh -h"   
exit 1
fi
