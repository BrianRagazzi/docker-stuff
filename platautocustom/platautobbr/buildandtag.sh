#!/bin/bash
docker build -t platautobbr:4.0.1 .

docker tag platautobbr:4.0.1 harbor.ragazzilab.com/platauto/platautobbr:4.0.1
docker push harbor.ragazzilab.com/platauto/platautobbr:4.0.1
