#!/bin/bash

docker pull mreferre/yelb-ui:0.3
docker pull mreferre/yelb-db:0.5
docker pull mreferre/yelb-appserver:0.4
docker pull redis:4.0.2

docker tag mreferre/yelb-ui:0.3 harbor.brianragazzi.com/library/yelb-ui:0.3
docker tag mreferre/yelb-db:0.5 harbor.brianragazzi.com/library/yelb-db:0.5
docker tag mreferre/yelb-appserver:0.4 harbor.brianragazzi.com/library/yelb-appserver:0.4
docker tag redis:4.0.2 harbor.brianragazzi.com/library/redis:4.0.2

docker push harbor.brianragazzi.com/library/yelb-ui:0.3
docker push harbor.brianragazzi.com/library/yelb-db:0.5
docker push harbor.brianragazzi.com/library/yelb-appserver:0.4
docker push harbor.brianragazzi.com/library/redis:4.0.2
