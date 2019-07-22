#!/bin/bash
bosh alias-env $BOSH_ALIAS -e $BOSH_IP
cd nginx-release
bosh deploy -d $DEPLOYMENT_NAME manifest.yml -n




