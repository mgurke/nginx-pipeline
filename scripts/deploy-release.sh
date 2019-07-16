#!/bin/bash
bosh alias-env $BOSH_ALIAS -e $BOSH_IP
cd nginx-release
bosh deploy -d nginx manifest.yml -n
bosh deployments
echo "####################################"
echo "visit nginx under $URL_NGINX_RELEASE"
echo "####################################"
