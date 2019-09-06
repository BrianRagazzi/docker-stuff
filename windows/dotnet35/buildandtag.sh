#!/bin/bash
docker build -t aspnet-helloworld:3.5 .

docker tag aspnet-helloworld:3.5 harbor.ragazzilab.com/windows/aspnet-helloworld:3.5
docker push harbor.ragazzilab.com/windows/aspnet-helloworld:3.5
