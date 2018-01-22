#! /usr/bin/env sh

source ./inspect_environment.sh

echo "Stopping services ..."

docker-compose stop telegraf
docker-compose stop kafka 
docker-compose stop zookeeper 
docker-compose stop influxdb 
docker-compose stop grafana 

docker-compose ps
