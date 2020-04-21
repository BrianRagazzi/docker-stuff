#!/bin/bash

VER=$(curl http://xmage.de/xmage/config.json | jq '.XMage.version' | cut -d" " -f1 | sed "s/\"//g" )

docker build -t docker-xmage-alpine:$VER .
#
docker tag docker-xmage-alpine:$VER harbor.pae.ragazzilab.com/library/docker-xmage-alpine:$VER
docker push harbor.pae.ragazzilab.com/library/docker-xmage-alpine:$VER
docker rmi docker-xmage-alpine:latest
docker tag harbor.pae.ragazzilab.com/library/docker-xmage-alpine:$VER harbor.pae.ragazzilab.com/library/docker-xmage-alpine:latest
docker push harbor.pae.ragazzilab.com/library/docker-xmage-alpine:latest


docker tag docker-xmage-alpine:$VER ragazzilab/docker-xmage-alpine:$VER
docker push ragazzilab/docker-xmage-alpine:$VER
docker rmi ragazzilab/docker-xmage-alpine:latest
docker tag ragazzilab/docker-xmage-alpine:$VER ragazzilab/docker-xmage-alpine:latest
docker push ragazzilab/docker-xmage-alpine:latest
