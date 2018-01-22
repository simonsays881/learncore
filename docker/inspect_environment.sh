#! /usr/bin/env sh
  
export LOCALHOST=localhost
if [[ -f "$(command -v docker-machine)" ]]; then
    export LOCALHOST=192.168.99.100
    eval "$(docker-machine env learncore)"
fi
