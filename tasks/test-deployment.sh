#!/bin/bash
set -x -e

nginx-pipeline/scripts/create-trigger-tag-file.sh
nginx-pipeline/scripts/test-deployment.sh
