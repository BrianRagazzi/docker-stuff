#!/bin/bash
docker build -t concourse-kubectl:180121 .

docker tag concourse-kubectl:180121 harbor.ragazzilab.com/library/concourse-kubectl:180121
docker push harbor.ragazzilab.com/library/concourse-kubectl:180121
