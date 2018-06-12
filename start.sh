#! /bin/sh

mount --bind /project/download/ /mnt/xunlei

while true; do
    pid=`ps -ef|grep vod_httpserver|grep -v grep|awk '{print $2}'`
    if [ -z "$pid" ]; then
        ./portal
    else
        sleep 60
    fi
done
