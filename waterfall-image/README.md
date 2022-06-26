# waterfall-image


```
docker rmi "waterfall:latest"
docker rmi "harbor.ragazzilab.com/library/waterfall:latest"
docker rmi "ragazzilab/waterfall:latest"
docker build  -t "waterfall:latest" .

docker tag "waterfall:latest" "harbor.ragazzilab.com/library/waterfall:latest"
docker push "harbor.ragazzilab.com/library/waterfall:latest"

docker tag "waterfall:latest" "ragazzilab/waterfall:latest"
docker push "ragazzilab/waterfall:latest

```
