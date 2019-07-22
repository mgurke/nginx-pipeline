#!/bin/bash
set -x -e
nginx-pipeline/scripts/create-trigger-test-file.sh
nginx-pipeline/scripts/deploy-release.sh



IP=$(bosh vms -d $DEPLOYMENT_NAME| awk '{print $4}')
echo IP="$IP" >> trigger-test/trigger.properties