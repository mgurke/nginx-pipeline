#!/bin/bash
apt-get update -y --fix-missing
apt-get install curl

PROPERTIES_FILE=${1:-"keyval/keyval.properties"}
TEST_PORT=${2:-80}

# Searches the properties file for the IP and writes the value into a variable
IP=$(cat $PROPERTIES_FILE | grep IP= | cut -d'=' -f2)

# Test the reachability of the nginx
curl -f $IP:8080    