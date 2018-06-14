#! /bin/sh

mount --bind /project/download/ /mnt/xunlei

./portal

sleep 60

while true; do
    pid=`ps -ef|grep vod_httpserver|grep -v grep|awk '{print $2}'`
    if [ -z "$pid" ]; then
        exit
    else
        sleep 60
    fi
done

