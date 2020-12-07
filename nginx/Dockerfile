FROM debian:stretch

# 配置apt-get为阿里源
COPY sources.list /etc/apt/sources.list

RUN apt update && apt install -y cron vim libpcre3-dev gcc make autoconf libssl-dev uuid-dev zlib1g-dev

#openssl
COPY openssl-1.1.1.tar.gz /tmp/openssl-1.1.1.tar.gz
WORKDIR /tmp
RUN tar -xzvf openssl-1.1.1.tar.gz

#安装nginx
COPY nginx-1.14.0.tar.gz /tmp/nginx-1.14.0.tar.gz
WORKDIR /tmp
RUN tar -xzf nginx-1.14.0.tar.gz
WORKDIR /tmp/nginx-1.14.0
RUN ./configure --with-openssl=/tmp/openssl-1.1.1 --with-http_v2_module --with-http_ssl_module && make && make install


#导入nginx配置文件
COPY nginx.conf      /usr/local/nginx/conf/nginx.conf
COPY crontab    /etc/crontab
COPY Shanghai    /etc/localtime
COPY init.sh      /init.sh
RUN chmod +x /init.sh
COPY  task_queue.sh      /task_queue.sh
RUN chmod +x /task_queue.sh
RUN ln -s /usr/local/nginx/sbin/nginx /bin/nginx

#导入配置文件
COPY .vimrc /root/.vimrc

CMD ["/init.sh"]
WORKDIR /workspace
RUN useradd -d /home/git -u 1000 -U -s /usr/bin/git-shell git

