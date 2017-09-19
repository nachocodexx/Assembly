#!/bin/bash

echo "Nass v0.0.1"

if [ -z "$1" ]
then
    echo "ERROR: No arguments"
    kill -INT $$
fi

basefile=$1

filename="${basefile%.*}"
ext="${basefile##*.}"


gcc -S $1
gcc -c "$filename.s" -o "$filename.o"
gcc "$filename.o" -o $filename

echo "Finished successfully"
