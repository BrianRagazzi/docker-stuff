#!/bin/bash
docker build -t platautouaac:4.0.0 .

docker tag platautouaac:4.0.0 harbor.ragazzilab.com/platauto/platautouaac:4.0.0
docker push harbor.ragazzilab.com/platauto/platautouaac:4.0.0
