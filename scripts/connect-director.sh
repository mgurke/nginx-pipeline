#!/bin/bash
export BOSH_CLIENT=((bosh_client))
export BOSH_CLIENT_SECRET=((bosh_client_secret))
export BOSH_ENVIRONMENT=((bosh_url))
export BOSH_CA_CERT="((bosh_ca_cert))"
bosh alias-env vbox -e 192.168.50.6
bosh vms
sudo apt-get update
sudo apt-get install wget