# Docker!

### Prerequisites

You must have either docker for mac or docker-toolbox (with docker, docker-machine and docker-compose) in order to run this repo.

NOTE: If you are using `docker-machine` you _must_ run `eval "$(docker-machine env learncore)"` before attempting to execute any docker related commands or scripts.

## Usage

Run `/up.sh` and 

This docker repo contains a docker-compose file that will launch a number of services used to visualize your computer's system usage.

It launches a number of services:

zookeeper
kafka
telegraf
influxdb
grafana


#### Check out some graphs!

Open a web browser and visit localhost:3000 (or 192.168.99.100:3000 if you are using docker-machine). You can use admin/admin to log into Grafana and create some graphs!

#### Tail some logs!

`./log.sh` ${SERVICE} will tail the logs of the service
