#!/usr/bin/env sh

docker build  -t test-volume . || exit 1
pid=$(docker run -d test-volume)

docker logs $pid

sleep 10

docker rm -f $pid;

echo "\n\n\n--------------------\nBuild ok!"
exit 0;
