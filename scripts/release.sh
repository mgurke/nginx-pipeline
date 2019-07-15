#!/bin/bash
git clone git@bitbucket.org:meshstack/mg-kt-cf.git
cd mg-kt-cf/nginx-release
ls -la
bosh delete-deployment -d nginx -n
bosh create-release --force 
bosh upload-release
bosh deploy -d nginx manifest.yml -n
bosh tasks --recent