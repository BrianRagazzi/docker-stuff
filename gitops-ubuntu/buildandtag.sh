#!/bin/bash
docker build -t ubuntu-concourse-kubectl:190121 .

docker tag ubuntu-concourse-kubectl:190121 harbor.ragazzilab.com/library/ubuntu-concourse-kubectl:190121
docker push harbor.ragazzilab.com/library/ubuntu-concourse-kubectl:190121
