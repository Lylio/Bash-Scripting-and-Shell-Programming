#!/usr/bin/env bash

repo_name=$1
branch_name=$2

read -p "Please enter username: " username
read -s -p "Please enter password: " password
echo
if [[ $# -eq null  ||  $# -eq 1 ]]; then
    read -p "Please enter repo name: " repo_name
    read -p "Please enter ticket/branch name: " branch_name
fi

rm -rf ~/scratch

#Clone repo
git clone git@github.com:Lylio/${repo_name}.git ~/scratch/${repo_name}

#Capture message and append to README.md
message=$(tail -n +7 test_successful.txt)
cd ~/scratch/$repo_name
echo ${message} >> README.md

#git checkout, commit, push
git checkout -b $branch_name
git commit -a -m "$branch_name : MINOR : upated README.md"
git push --set-upstream origin $branch_name

#Last words
echo "============================================"
echo " NOW CREATE PULL REQUEST AT $repo_name REPO "
echo "============================================"

#Cleanup
rm -rf ~/scratch
