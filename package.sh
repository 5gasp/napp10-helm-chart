#!/bin/bash
set -x

# dependencies update (mongodb & redis)
helm dependency update neo-vro-helm

# package as tgz archive
helm package neo-vro-helm
