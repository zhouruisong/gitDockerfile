FROM docker.io/centos
MAINTAINER zhouruisong <zhouruisong@xunlei.com>
RUN yum clean all
RUN yum update -y
#utils
RUN yum install -y vim lrzsz git hostname sudo less iproute psmisc net-tools \
bash unzip which tar passwd ed m4 patch rsync wget curl tcpdump telnet \
tar bzip2 unzip strace supervisor openssl openssh openssh-server \
openssh-clients util-linux inotify-tools
#dev
RUN yum install -y gcc-c++ libtool make gdb mariadb-devel snappy-devel \
boost-devel lz4-devel zlib-devel libcurl-devel libevent-devel \
libesmtp-devel libuuid-devel libcsv-devel cyrus-sasl-devel \
bzip2-devel libpqxx-devel libxml2-devel libxslt-devel libxslt-python \
libpng-devel jemalloc-devel
RUN mkdir -p /usr/local/sandai
RUN mkdir -p /etc/yum.repos.d/
#RUN touch /etc/yum.repos.d/ots.repo
ADD ots.repo /etc/yum.repos.d/
RUN ls /etc/yum.repos.d
RUN yum -y install tfdfs
RUN yum clean all
