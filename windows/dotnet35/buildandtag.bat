
docker build -t dotnet-helloworld:3.5 .

docker tag dotnet-helloworld:3.5 harbor.pae.ragazzilab.com/windows/dotnet-helloworld:3.5
docker push harbor.pae.ragazzilab.com/windows/dotnet-helloworld:3.5
