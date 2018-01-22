#! /usr/bin/env sh

source ./inspect_environment.sh

echo "Stopping any running containers ..."

docker-compose stop kafka
docker-compose stop zookeeper
docker-compose stop telegraf 
docker-compose stop influxdb
docker-compose stop grafana

echo "Starting services ..."

docker-compose up -d zookeeper
docker-compose up -d kafka
docker-compose up -d influxdb
docker-compose up --build -d telegraf 
docker-compose up --build -d grafana 

echo "Services started ..."

docker-compose ps
