FROM i386/ubuntu

RUN sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list
RUN apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade

RUN apt-get install -y build-essential make gcc-multilib git

COPY ucc.tar.gz /tmp/ucc.tar.gz
WORKDIR /tmp
RUN tar -xzvf ucc.tar.gz
WORKDIR /tmp/ucc

RUN make -s
RUN make -s install


WORKDIR /code

