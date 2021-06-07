FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive"

RUN sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list
RUN apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade

RUN apt -y install apt-utils

RUN apt -y install build-essential make gcc-multilib g++-multilib libmicrohttpd-dev libjansson-dev  libssl-dev libsofia-sip-ua-dev libglib2.0-dev libopus-dev libogg-dev libcurl4-openssl-dev liblua5.3-dev libconfig-dev pkg-config gengetopt libtool automake meson git

COPY libnice.tar.gz /tmp/libnice.tar.gz
RUN cd /tmp && tar xfv libnice.tar.gz
WORKDIR /tmp/libnice
RUN meson --prefix=/usr build && ninja -C build && ninja -C build install

COPY libsrtp-2.2.0.tar.gz /tmp/libsrtp-2.2.0.tar.gz
RUN cd /tmp && tar xfv libsrtp-2.2.0.tar.gz
WORKDIR /tmp/libsrtp-2.2.0
RUN ./configure --prefix=/usr --enable-openssl
RUN make shared_library && make install


COPY janus-gateway-0.11.2.tar.gz /tmp/janus-gateway-0.11.2.tar.gz
RUN cd /tmp && tar xfv janus-gateway-0.11.2.tar.gz
WORKDIR /tmp/janus-gateway-0.11.2
RUN sh autogen.sh && ./configure --prefix=/opt/janus && make && make install
RUN make configs

COPY janus.jcfg /opt/janus/etc/janus/janus.jcfg

WORKDIR /opt/janus/bin
CMD ["/opt/janus/bin/janus"]
