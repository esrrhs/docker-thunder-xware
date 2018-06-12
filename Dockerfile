FROM centos:latest

MAINTAINER esrrhs <esrrhs@163.com>  

RUN 	yum install glibc.i686 -y && \
	yum install libstdc++.so.6 -y && \
	yum install zlib.i686 -y && \
	yum clean all && \
	rm -rf /var/cache/yum/*

RUN	mkdir -p /mnt/xunlei && \
	mkdir -p /project/download

COPY xunlei /project/
COPY start.sh /project/
VOLUME /project/download

WORKDIR /project
RUN chmod +x ./portal && chmod a+x ./start.sh

CMD ["./start.sh"]


