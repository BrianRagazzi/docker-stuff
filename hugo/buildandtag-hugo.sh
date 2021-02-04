#!/bin/bash
docker build -t hugo:test -f ./Dockerfile-hugoonly .

docker tag hugo:test harbor.ragazzilab.com/library/hugo:test
docker push harbor.ragazzilab.com/library/hugo:test

# docker tag hugo-lablinks:techdoc ragazzilab/hugo-lablinks:techdoc
# docker push ragazzilab/hugo-lablinks:techdoc
