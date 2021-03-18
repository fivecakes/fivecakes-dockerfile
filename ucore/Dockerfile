FROM ubuntu:16.04

RUN sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list
RUN apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade

RUN apt-get install -y build-essential qemu-system-x86 gdb make gcc-multilib g++-multilib xterm nasm

WORKDIR /code
RUN ln -s /usr/bin/qemu-system-i386 /usr/local/bin/qemu
