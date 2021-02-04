#!/bin/bash
docker build -t credhub-cli:2.7.0 .

docker tag credhub-cli:2.7.0 ragazzilab/credhub-cli:2.7.0
#docker push ragazzilab/credhub-cli:2.7.0
