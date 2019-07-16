#!/bin/bash
cd nginx-release
bosh deploy -d nginx manifest.yml -n
bosh deployments