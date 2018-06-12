#! /bin/sh
docker stop xware
docker rm xware

docker run --name xware --privileged -v /home/download:/project/download -d xware
