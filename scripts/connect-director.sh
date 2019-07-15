#!/bin/bash
touch bosh.cert
printf "\n$BOSH_CA_CERT" > bosh.cert
cat bosh.cert
bosh alias-env $BOSH_ALIAS -e $BOSH_IP
bosh vms
apt-get update
apt-get install wget