#!/bin/bash
apt-get update -y
apt-get install curl -y
curl --fail $IP -d ../keyval/keyval.properties