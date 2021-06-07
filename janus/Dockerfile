FROM ubuntu:16.04

RUN sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list
RUN apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade

RUN apt-get install -y build-essential make gcc-multilib g++-multilib



#openssl
#COPY openssl-1.1.1.tar.gz /tmp/openssl-1.1.1.tar.gz
#WORKDIR /tmp
#RUN tar -xzvf openssl-1.1.1.tar.gz

# --with-openssl=/tmp/openssl-1.1.1


#COPY libsrtp-2.2.0.tar.gz /tmp/libsrtp-2.2.0.tar.gz
#RUN tar xfv libsrtp-2.2.0.tar.gz
#WORKDIR /tmp/libsrtp-2.2.0
#RUN ./configure --prefix=/usr --enable-openssl
#RUN make shared_library && sudo make install

