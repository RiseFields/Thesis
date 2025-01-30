#!/usr/bin/bash

source=$1
dest=$2

echo "Copying every other file from $source to $dest"

names=`ls $source`
index=0
for x in $names
do
    if [ $((index % 2)) -eq 0 ]
    then
        `cp JPG_4/$x JPG_8/`
        echo "Copyied ${index}_$x"
    fi
    let index=${index}+1
done
