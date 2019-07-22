#!/bin/bash
set -x -e

nginx-pipeline/scripts/create-keyval-file.sh
nginx-pipeline/scripts/test-deployment.sh
