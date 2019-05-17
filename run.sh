#!/bin/sh

docker build -t cmcmapper -f Dockerfile .
docker run --privileged -ti -v ${PWD}:/usr/local/bin/cmcmapper -w /usr/local/bin/cmcmapper -p 8080:8080 cmcmapper zsh
