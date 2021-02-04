#!/bin/bash

VER=$(curl http://xmage.de/xmage/config.json | jq '.XMage.version' | cut -d" " -f1 | sed "s/\"//g" )

docker build --build-arg XMAGE_VERSION=$VER -t docker-xmage-alpine:$VER .
#
docker tag docker-xmage-alpine:$VER harbor.ragazzilab.com/library/docker-xmage-alpine:$VER
docker push harbor.ragazzilab.com/library/docker-xmage-alpine:$VER
#docker rmi docker-xmage-alpine:latest
docker rmi harbor.ragazzilab.com/library/docker-xmage-alpine:latest
docker tag harbor.ragazzilab.com/library/docker-xmage-alpine:$VER harbor.ragazzilab.com/library/docker-xmage-alpine:latest
docker push harbor.ragazzilab.com/library/docker-xmage-alpine:latest


docker tag docker-xmage-alpine:$VER ragazzilab/docker-xmage-alpine:$VER
docker push ragazzilab/docker-xmage-alpine:$VER
docker rmi ragazzilab/docker-xmage-alpine:latest
docker tag ragazzilab/docker-xmage-alpine:$VER ragazzilab/docker-xmage-alpine:latest
docker push ragazzilab/docker-xmage-alpine:latest
