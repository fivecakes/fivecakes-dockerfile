FROM continuumio/anaconda


# 配置apt-get为阿里源
COPY sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y --allow-remove-essential libtinfo5 vim 
COPY .vimrc /root/.vimrc

RUN mkdir -p /root/.pip/
COPY pip.conf /root/.pip/pip.conf

RUN apt-get install -y ffmpeg


# 创建conda环境
COPY environment.yml .
COPY condarc /root/.condarc
RUN conda update conda
RUN conda env create -f environment.yml

#SHELL ["conda", "run", "-n", "cling", "/bin/bash", "-c"]

EXPOSE 8888

COPY init.sh /init.sh
RUN chmod +x /init.sh

CMD ["/init.sh"]
