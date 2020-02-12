#!/usr/bin/env bash

if [  -f test-data/info.txt ]
 then
    echo "File found!"
    else
    echo "File not found"
fi

if [ -w test-data/info.txt ]
then
    echo "You have permission to edit shadow password"
else
    echo "You do not have permission to edit shadow passwords"
fi