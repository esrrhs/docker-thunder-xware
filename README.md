# Dockerizing thunder xware

迅雷离线下载 docker 镜像, 参考[yinheli/docker-thunder-xware](https://github.com/yinheli/docker-thunder-xware)修改

采用centos镜像和最新的xware，修复了大文件会挂掉的bug


## 使用

### 拉取镜像

```
docker pull esrrhs/docker-thunder-xware:latest
```

### 运行

```

docker run --name xware --privileged -v (你的目录):/project/download -d esrrhs/docker-thunder-xware

```

### 查看运行情况

```
docker ps
```

```
// output:
CONTAINER ID        IMAGE                                 COMMAND             CREATED             STATUS              PORTS               NAMES
c8a3d047af71        esrrhs/docker-thunder-xware:latest   "./start.sh"        4 seconds ago       Up 3 seconds                            xware
```

### 查看日志(激活码)/到迅雷增加设备

```
docker logs xware
```

```
// output:
killall: ETMDaemon: no process killed
killall: EmbedThunderManager: no process killed
killall: vod_httpserver: no process killed
initing...
try stopping xunlei service first...
setting xunlei runtime env...
port: 9000 is usable.

YOUR CONTROL PORT IS: 9000

starting xunlei service...
Connecting to 127.0.0.1:9000 (127.0.0.1:9000)
setting xunlei runtime env...
port: 9000 is usable.

YOUR CONTROL PORT IS: 9000

starting xunlei service...

getting xunlei service info...

THE ACTIVE CODE IS: xxx

go to http://yuancheng.xunlei.com, bind your device with the active code.
finished.
```

绑定成功后就可以开心地使用了.




