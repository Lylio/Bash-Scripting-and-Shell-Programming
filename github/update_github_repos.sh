#!/usr/bin/env bash

repo_name=$1
branch_name=$2

rm -rf ~/scratch

#Test if environment variables have bee passed
if [[ -z "$1" ||  -z "$2" ]]; then
    echo Error: missing parameters. Please include repository and branch environment variables.
    exit 1
fi

#Clone repo
git clone git@github.com:Lylio/${repo_name}.git ~/scratch/${repo_name}

#Capture message and append to README.md
message=$(tail -n +7 test_successful.txt)
cd ~/scratch/$repo_name
echo ${message} >> README.md

git checkout, commit, push
git checkout -b $branch_name
git commit -a -m "$branch_name : MINOR : added test file"
git push --set-upstream origin $branch_name

#Last words
echo "============================================"
echo " NOW CREATE PULL REQUEST AT $repo_name REPO "
echo "============================================"

#Cleanup
rm -rf ~/scratch
