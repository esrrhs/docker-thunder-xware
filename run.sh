#! /bin/sh
docker stop xware
docker rm xware

dir=/mnt/usb/xunlei/
mkdir -p $dir
mkdir -p $dir/download
rm $dir/download/ThunderDB/ -rf

docker run --name xware --privileged --restart=always -v $dir/download:/project/download -d esrrhs/docker-thunder-xware
