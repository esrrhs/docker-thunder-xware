#! /bin/sh
docker stop xware
docker rm xware

dir=/mnt/usb/xunlei/
mkdir -p $dir
mkdir -p $dir/download

r1=$(( (RANDOM % 89) + 10 ))
r2=$(( (RANDOM % 89) + 10 ))

mac=`echo "00:00:00:00:"$r1":"$r2`
echo $mac

docker run --name xware --privileged --mac-address $mac --restart=always -v $dir/download:/project/download -d esrrhs/docker-thunder-xware
