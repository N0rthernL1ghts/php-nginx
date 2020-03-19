#!/usr/bin/env sh
set -e

docker build -t local/dlnp .
docker run --rm -e VIRTUAL_HOST="docker.test.local,test.local" local/dlnp
