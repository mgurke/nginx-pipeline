#!/bin/bash
set -x
nginx-pipeline/scripts/connect-director.sh
nginx-pipeline/scripts/blobs.sh
nginx-pipeline/scripts/upload-release.sh
nginx-pipeline/scripts/deploy-release.sh