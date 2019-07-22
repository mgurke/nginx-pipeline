#!/bin/bash
apt-get -y update 
apt-get -y install curl

PROPERTIES_FILE=trigger-test/keyval.properties
TEST_PORT=80

# Searches the properties file for the IP and writes the value into a variable
IP=$(cat $PROPERTIES_FILE | grep IP= | cut -d'=' -f2)
echo $IP
# Test the reachability of the nginx
echo "Wait 30 sec for Nginx to come up"
sleep 30
curl -f $IP:$TEST_PORT