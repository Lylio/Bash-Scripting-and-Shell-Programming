#!/usr/bin/env bash

read -p "Enter mysql username: " MYSQL_USERNAME
stty -echo
read -p "Enter mysql password: " MYSQL_PASSWORD
stty echo

echo "logging into mysql as $MYSQL_USERNAME ..."
sleep 2s
mysql -u "$MYSQL_USERNAME" --password="$MYSQL_PASSWORD" -e "SHOW databases;"