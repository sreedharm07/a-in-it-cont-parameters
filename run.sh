#!/bin/bash

for parameter in catalogue.pod.mongo_url, MONGO_URL  catalogue.prod.DOCUMENTDB,DOCUMENTDB; do
  ssm_parameter=$(echo $parameter | aws -F, '{print $1}')
  app_parameter=$(echo $parameter | aws -F, '{print $2}')

aws ssm get-parameter --name $ssm_parameter --with-decryption | jq .Parameter.Value | sed -e 's/"//g'
done