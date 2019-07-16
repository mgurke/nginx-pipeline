#!/bin/bash
cd mg-kt-cf/nginx-release
ls -la
bosh delete-deployment -d nginx -n
bosh create-release --force 
bosh upload-release
