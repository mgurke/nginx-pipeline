#!/bin/bash

cd nginx-release
mkdir src
wget $URL_NGINX_RELEASE -O nginx-$NGINX_VERSION.tar.gz
wget $URL_PCRE_RELEASE -O pcre-$PCRE_VERSION.tar.gz

bosh add-blob nginx-* nginx_$NGINX_VERSION/nginx-$NGINX_VERSION.tar.gz
bosh add-blob pcre-* pcre_$PCRE_VERSION/pcre-$PCRE_VERSION.tar.gz

bosh blobs