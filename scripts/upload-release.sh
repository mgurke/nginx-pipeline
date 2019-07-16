#!/bin/bash
cd nginx-release
ls -la
bosh delete-deployment -d nginx -n

bosh create-release --force 
exec sleep 99999999
bosh upload-release
