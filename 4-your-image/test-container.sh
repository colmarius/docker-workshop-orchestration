#!/usr/bin/env sh

docker build  -t test-bashd . || exit 1
pid=$(docker run -d -p 8080:8080 test-bashd)
wget -O /tmp/index.html localhost:8080 || exit 2

docker logs $pid
docker rm -f $pid;

echo "\n\n\n--------------------\nBuild ok!"
exit 0;
