#!/usr/bin/env bash
# A script to export the IP addresses of all running containers
# WORK IN PROGRESS

OPENSHIFTS="$*"

read -p "OpenShift user: " USER
read -s -p "OpenShift pwd: " PWD
echo

if [ -z "$OPENSHIFTS" ]; then
    OPENSHIFTS="https://master.openshift.local:8443"
fi

rm -rf /tmp/ip_list.txt

oc project kiosk-concession
for openshift in $OPENSHIFTS; do
    echo XXX USING ${openshift} XXXX
    oc login openshift --username=$USER --password=$PWD
    oc describe pod | grep -w Name | awk '{ print $2 }' && oc describe pod | grep IP | awk '{ print $2 }'
done