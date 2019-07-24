#!/bin/bash

set -e

apt-get -y update
apt-get -y install git

nginx-pipeline/scripts/tag-version.sh

echo "Die ist ein Test zum taggen"