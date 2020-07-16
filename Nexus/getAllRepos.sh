#!/usr/bin/env bash
# A script to retrieve all repos from Nexus Repository Manager
# Run with 'bash getAllRepos.sh' to avoid -s flag errors
echo
echo "*******************************************************************************"
echo "*** This script should be run with the bash command to avoid -s flag errors ***"
echo "*******************************************************************************"
echo
read -p "Please Nexus Repo URL: " Nexus_URL
read -p "Please enter Nexus username: " Nexus_Username
read -s -p "Please enter Nexus password: " Nexus_Password

# GET repositories
curl -u $Nexus_Username:$Nexus_Password -X GET $Nexus_URL'/service/rest/v1/repositories'