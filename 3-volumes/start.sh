#!/usr/bin/env sh

set -ex

while true
do
  echo "$(date)" >> /my-volume/file.log
done
