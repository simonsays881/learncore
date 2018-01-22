#! /usr/bin/env sh

docker-machine create --driver virtualbox learncore

echo "Checking environment information..."

eval "$(docker-machine env learncore)"

docker-machine env learncore

