#!/usr/bin/env bash
# A script to export the IP addresses of all running containers
# WORK IN PROGRESS

OPENSHIFTS="$1"

read -p "OpenShift user: " USER
read -s -p "OpenShift pwd: " PWD
echo
echo "your details are $USER and $PWD"

if [ -z "$OPENSHIFTS" ]; then
    OPENSHIFTS="master.openshift.local:8443"
fi

echo "OPENSHIFTS = $OPENSHIFTS"

rm -rf /tmp/ip_list.txt

for openshift in $OPENSHIFTS; do
echo xxxx USING XXXXX ${openshift}
done