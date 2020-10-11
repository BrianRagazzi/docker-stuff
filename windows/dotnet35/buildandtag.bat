
docker build -t dotnet-helloworld:3.5 .

docker tag dotnet-helloworld:3.5 harbor.ragazzilab.com/windows/dotnet-helloworld:3.5
docker push harbor.ragazzilab.com/windows/dotnet-helloworld:3.5

docker tag dotnet-helloworld:3.5 ragazzilab/dotnet-helloworld:3.5
