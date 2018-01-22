#! /usr/bin/env sh

source ./inspect_environment.sh

docker-compose restart "$@"
