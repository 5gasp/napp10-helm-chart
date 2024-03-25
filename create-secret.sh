#!/bin/bash
set -x

source .env

# create 5gaspsecret
kubectl create secret docker-registry 5gaspsecret --docker-server=$HARBOR_SERVER --docker-username=$HARBOR_USERNAME --docker-password=$HARBOR_PASSWORD
