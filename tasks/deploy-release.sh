#!/bin/bash
set -x -e
nginx-pipeline/scripts/create-trigger-test-file.sh
nginx-pipeline/scripts/deploy-release.sh


