# Docker!

### Prerequisites

You must have either docker for mac or docker-toolbox (with docker, docker-machine and docker-compose) in order to run this repo.

NOTE: If you are using `docker-machine` you _must_ run `eval "$(docker-machine env learncore)"` before attempting to execute any docker related commands or scripts.

## Usage

Run `./create_machine.sh` to create a docker-machine (if necessary) and then run `./up.sh` to launch all of the services with docker-compose.

It launches a number of services:

zookeeper
kafka
telegraf
influxdb
grafana

#### Check out some graphs!

Open a web browser and visit localhost:3000 (or 192.168.99.100:3000 if you are using docker-machine). You can use admin/admin to log into Grafana and create some graphs!

#### Scripts!

`./up.sh` to bring up all services

`./inspect_environment.sh` will check whether or not to use `192.168.99.100` for the localhost (docker-machine) or localhost (Docker for Mac)

`./restart.sh` to restart everything

`./stop.sh` to stop all services

`./kill.sh` to kill stop all services and remove their respective containers and images

`./log.sh` ${SERVICE} will tail the logs of the service
