#!/bin/bash
fly -t ci set-pipeline -c pipeline.yml -p nginx-release -l creds.yml
fly -t ci trigger-job -j create-release
