#!/bin/bash
apt-get -y update 
apt-get -y install curl

PROPERTIES_FILE=trigger-test/keyval.properties
TEST_PORT=8080

# Searches the properties file for the IP and writes the value into a variable
IP=$(cat $PROPERTIES_FILE | grep IP= | cut -d'=' -f2)
echo 
echo $IP
# Test the reachability of the nginx
curl -f $IP:8080    