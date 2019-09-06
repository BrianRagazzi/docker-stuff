#!/bin/bash
docker build -t aspnet-helloworld:3.5 .

docker tag aspnet-helloworld:3.5 harbor.haas-453.pez.pivotal.io/windows/aspnet-helloworld:3.5
docker push harbor.haas-453.pez.pivotal.io/windows/aspnet-helloworld:3.5
