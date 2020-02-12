#!/usr/bin/env bash

if [[ -d "$@" ]]

then
    echo "$@ is a directory"

elif [[ -f "$@" ]]

then
    echo "$@ is a file"
fi