#!/bin/bash
mkdir 
bosh alias-env $BOSH_ALIAS -e $BOSH_IP
cd nginx-release
bosh deploy -d $DEPLOYMENT_NAME manifest.yml -n




# Find and write the IP of the nginx vm to the keyval file


IP=$(bosh vms -d $DEPLOYMENT_NAME| awk '{print $4}')
echo "visit nginx under:"

echo IP="$IP" >> trigger-test/trigger.properties

cat trigger-test/trigger.properties