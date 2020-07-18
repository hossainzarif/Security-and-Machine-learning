#!/bin/bash

integer_list=()
noninteger_list=()
for var in $@
do
if [[ $var =~ ^-?[0-9]+$ ]]
then
integer_list+=("${var}")
else
noninteger_list+=("${var}")
fi
done 

echo "List of Integers: [ ""${integer_list[@]}"" ]"
echo "Non Integer List: [ ""${noninteger_list[@]}"" ]"




