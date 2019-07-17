#!/bin/bash
apt-get install curl 
curl --fail $IP -d ../keyval/keyval.properties