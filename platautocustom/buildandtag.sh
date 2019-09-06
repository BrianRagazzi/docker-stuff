#!/bin/bash
docker build -t platautouaac:3.0.7 .

docker tag platautouaac:3.0.7 harbor.ragazzilab.com/platauto/platautouaac:3.0.7
docker push harbor.ragazzilab.com/platauto/platautouaac:3.0.7
