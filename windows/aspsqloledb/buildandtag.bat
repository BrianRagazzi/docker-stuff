
docker build -t aspsqloledb:1.0 .

docker tag aspsqloledb:1.0 harbor.pae.ragazzilab.com/windows/aspsqloledb:1.0
docker push harbor.pae.ragazzilab.com/windows/aspsqloledb:1.0
