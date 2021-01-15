FROM python:3.8


# 配置apt-get为阿里源
# COPY sources.list /etc/apt/sources.list

# 配置pip为阿里源
RUN mkdir -p /root/.pip/
COPY pip.conf /root/.pip/pip.conf


# Install Scrapy
RUN pip install PyPDF2


WORKDIR /tmp
