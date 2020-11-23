FROM python:3.8


# 配置apt-get为阿里源
COPY sources.list /etc/apt/sources.list

# 配置pip为阿里源
RUN mkdir -p /root/.pip/
COPY pip.conf /root/.pip/pip.conf


RUN apt-get update && apt-get install -y --allow-remove-essential libtinfo5 vim cron



# Install Scrapy
RUN pip install scrapy pymongo

# 导入配置文件
COPY .vimrc /root/.vimrc
COPY crontab    /etc/crontab

COPY init.sh /init.sh
RUN chmod +x /init.sh
CMD ["/init.sh"]
