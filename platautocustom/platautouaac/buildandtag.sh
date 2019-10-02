#!/bin/bash
docker build -t platautouaac:4.0.3 .

docker tag platautouaac:4.0.3 harbor.ragazzilab.com/platauto/platautouaac:4.0.3
docker push harbor.ragazzilab.com/platauto/platautouaac:4.0.3
