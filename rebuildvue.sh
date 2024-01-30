#!/bin/sh

# Simple script to build the vue directory from github originals
# for the error `OSError at /search/`

/bin/rm -rf /recipes/vue/*
/bin/cp -r /recipes/vue~/* /recipes/vue
cd /recipes/vue
/usr/bin/yarn install
/usr/bin/yarn build
/bin/rm -rf ./src 