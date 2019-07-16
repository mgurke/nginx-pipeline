#!/bin/bash
apt-get update
apt-get install wget
touch bosh.cert
printf "\n$BOSH_CA_CERT" > bosh.cert
cat bosh.cert
bosh alias-env $BOSH_ALIAS -e $BOSH_IP
bosh vms
ls -la
