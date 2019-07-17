#!/bin/bash
apt-get update
apt-get install curl 
curl --fail $IP -d ../keyval/keyval.properties