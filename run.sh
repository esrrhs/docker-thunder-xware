#! /bin/sh
docker stop xware
docker rm xware

dir=/home/xunlei
mkdir -p $dir
mkdir -p $dir/download

docker run --name xware --privileged --restart=always -v $dir/download:/project/download -d esrrhs/docker-thunder-xware
