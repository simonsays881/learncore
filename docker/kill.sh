#! /usr/bin/env sh

source ./inspect_environment.sh

echo "Killing all the things ..."

docker-compose down
