#!/bin/bash
set -x
mkdir keyval
touch keyval/keyval.properties
nginx-pipeline/scripts/connect-director.sh
nginx-pipeline/scripts/blobs.sh
nginx-pipeline/scripts/upload-release.sh
