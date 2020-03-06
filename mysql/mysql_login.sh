#!/usr/bin/env bash

read -p 'Enter mysql username: ' mysql_username
read -sp 'Enter mysql password: ' mysql_password

echo "logging into mysql as $mysql_username ..."
sleep 1s
mysql -u "$mysql_username" --password="$mysql_password" -e "SHOW databases;"