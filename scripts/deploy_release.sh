#!/bin/bash
cd mg-kt-cf/nginx-release
bosh deploy -d nginx manifest.yml -n
bosh deployments