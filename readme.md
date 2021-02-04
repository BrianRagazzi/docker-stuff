
Notes:

docker import ./platform-automation-image-3.0.5.tgz platauto:3.0.5
docker tag platauto:3.0.5 harbor.ragazzilab.com/platauto/platauto:3.0.5
docker push harbor.ragazzilab.com/platauto/platauto:3.0.5


Clean Up:
docker rm -vf $(docker ps -a -q)
docker rmi -f $(docker images -a -q)

docker system prune -a --volumes
