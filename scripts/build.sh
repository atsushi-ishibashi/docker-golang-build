#! /bin/bash

docker build -t gosample -f './Dockerfile.golang' .
echo 'run gosample'
docker run gosample
docker cp gosample:/app/main main
docker build -t mainsample -f './Dockerfile' .
docker run -p 1111:8888 -i mainsample &
