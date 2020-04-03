#!/bin/bash
docker build -t platautouaac:4.3.0 .

docker tag platautouaac:4.3.0 harbor.pae.ragazzilab.com/platauto/platautouaac:4.3.0
docker push harbor.pae.ragazzilab.com/platauto/platautouaac:4.3.0
