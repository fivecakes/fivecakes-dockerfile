FROM php:7.2-fpm-stretch

#配置apt阿里源
COPY sources.list /etc/apt/sources.list

# 安装依赖

RUN apt update && apt install -y gcc autoconf make vim git cron

#安装php扩展
RUN pecl install mongodb-1.5.3


#安装Let’s Encrypt客户端
RUN echo "deb http://deb.debian.org/debian stretch-backports main" | tee /etc/apt/sources.list.d/stretch-backports.list


RUN apt update && apt install -y certbot python-certbot-nginx -t stretch-backports


#导入php配置文件
COPY php.ini    /usr/local/etc/php/php.ini
COPY php-fpm.conf    /usr/local/etc/php-fpm.d/php-fpm.conf
COPY crontab    /etc/crontab
COPY Shanghai    /etc/localtime
COPY gitconfig    /etc/gitconfig
COPY init.sh      /init.sh
RUN chmod +x /init.sh

#导入配置文件
COPY .vimrc /root/.vimrc


CMD ["/init.sh"]
WORKDIR /workspace
RUN usermod -u 1000 www-data





