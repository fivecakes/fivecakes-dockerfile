FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive"

RUN sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list
RUN apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade

RUN apt -y install apt-utils

RUN apt -y install build-essential make gcc-multilib g++-multilib libmicrohttpd-dev libjansson-dev  libssl-dev libsofia-sip-ua-dev libglib2.0-dev libopus-dev libogg-dev libcurl4-openssl-dev liblua5.3-dev libconfig-dev pkg-config gengetopt libtool automake meson git

#RUN git clone https://gitlab.freedesktop.org/libnice/libnice
#RUN cd libnice
#RUN meson --prefix=/usr build && ninja -C build && sudo ninja -C build install
#
#
#COPY libsrtp-2.2.0.tar.gz /tmp/libsrtp-2.2.0.tar.gz
#RUN tar xfv libsrtp-2.2.0.tar.gz
#WORKDIR /tmp/libsrtp-2.2.0
#RUN ./configure --prefix=/usr --enable-openssl
#RUN make shared_library && sudo make install

#openssl
#COPY openssl-1.1.1.tar.gz /tmp/openssl-1.1.1.tar.gz
#WORKDIR /tmp
#RUN tar -xzvf openssl-1.1.1.tar.gz

# --with-openssl=/tmp/openssl-1.1.1