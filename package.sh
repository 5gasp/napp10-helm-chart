#!/bin/bash
set -x

# add bitnami repo
helm repo add bitnami https://charts.bitnami.com/bitnami

# dependencies update (mongodb & redis)
helm dependency update neo-vro-helm

# package as tgz archive
helm package neo-vro-helm
