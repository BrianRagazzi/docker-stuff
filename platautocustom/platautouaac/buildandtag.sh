#!/bin/bash
docker build -t platautouaac:4.3.3 .

docker tag platautouaac:4.3.3 harbor.pae.ragazzilab.com/platauto/platautouaac:4.3.3
docker push harbor.pae.ragazzilab.com/platauto/platautouaac:4.3.3
