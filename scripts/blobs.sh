#!/bin/bash
cd mg-kt-cf/nginx-release
wget $URL_NGINX_RELEASE -O nginx-$NGINX_VERSION.tar.gz
wget $URL_PCRE_RELEASE -O pcre-$PCRE_VERSION.tar.gz

bosh add-blob nginx-* nginx-$NGINX_VERSION.tar.gz
bosh add-blob pcre-* pcre-$PCRE_VERSION.tar.gz

bosh blobs