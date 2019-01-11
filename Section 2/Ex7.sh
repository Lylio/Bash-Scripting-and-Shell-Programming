#!/usr/bin/env bash


if [[ -d "$1" ]]

then
    echo "$1 is a directory"

elif [[ -f "$1" ]]

then
    echo "$1 is a file"
fi

if [[ -d "$2" ]]

then
    echo "$2 is a directory"

elif [[ -f "$2" ]]

then
    echo "$2 is a file"
fi


