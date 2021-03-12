#!/bin/bash

TAG=020521
docker build -t hugo:$TAG -f ./Dockerfile-hugoonly .

docker tag hugo:$TAG harbor.ragazzilab.com/library/hugo:$TAG
docker push harbor.ragazzilab.com/library/hugo:$TAG

docker tag hugo:$TAG ragazzilab/hugo:$TAG
docker push ragazzilab/hugo:$TAG
