#!/bin/bash
bosh alias-env $BOSH_ALIAS -e $BOSH_IP
cd nginx-release
bosh deploy -d $DEPLOYMENT_NAME manifest.yml -n




# Find and write the IP of the nginx vm to the keyval file
IP=$(bosh vms -d $DEPLOYMENT_NAME| awk '{print $4}')
echo "visit nginx under:"
echo IP="$IP" >> ${ROOT_FOLDER}/keyval/keyval.properties



props="${ROOT_FOLDER}/keyval/keyval.properties"
if [ -f "$props" ]
then
  echo "Reading passed key values"
  while IFS= read -r var
  do
    if [ ! -z "$IP" ]
    then
      echo "Adding: $IP"
      export "$IP"
    fi
  done < "$props"
fi


cat ${ROOT_FOLDER}/keyval/keyval.properties