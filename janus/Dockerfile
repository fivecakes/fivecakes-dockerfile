FROM debian:stretch

# 配置apt-get为阿里源
COPY sources.list /etc/apt/sources.list

RUN apt update && apt install -y cron vim libpcre3-dev gcc make autoconf libssl-dev uuid-dev zlib1g-dev

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

