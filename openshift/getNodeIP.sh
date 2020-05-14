#!/usr/bin/env bash
# A script to print the container IP addresses of an OpenShift project

OPENSHIFTS="$*"

read -p "OpenShift user: " USER
read -s -p "OpenShift pwd: " PWD
echo

if [ -z "$OPENSHIFTS" ]; then
    OPENSHIFTS="https://master.openshift.local:8443"
fi

IPs=`oc describe pod | grep IP | awk '{ print $2 }'`

for ip in $IPs; do
    echo $ip
done