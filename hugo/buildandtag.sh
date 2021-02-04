#!/bin/bash
docker build -t hugo-lablinks:techdoc ./Dockerfile-techdoc

docker tag hugo-lablinks:techdoc harbor.ragazzilab.com/library/hugo-lablinks:techdoc
docker push harbor.ragazzilab.com/library/hugo-lablinks:techdoc

# docker tag hugo-lablinks:techdoc ragazzilab/hugo-lablinks:techdoc
# docker push ragazzilab/hugo-lablinks:techdoc
