#!/bin/bash
set -x
bosh alias-env $BOSH_ALIAS -e $BOSH_IP
nginx-pipeline/scripts/deploy-release.sh