#!/bin/bash
set -x

source .env

# add 5gasp (public) repo (for uploading)
helm repo add 5gasp https://$HARBOR_SERVER/chartrepo/5gasp --username $HARBOR_USERNAME --password $HARBOR_PASSWORD

# add chartmuseum plugin
helm plugin install https://github.com/chartmuseum/helm-push

# push
helm cm-push neo-vro-helm 5gasp
