FROM python:3.6

ENV LANG=C.UTF-8

# 配置apt-get为阿里源
COPY sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y --allow-remove-essential libtinfo5 vim
COPY .vimrc /root/.vimrc

RUN mkdir -p /root/.pip/
COPY pip.conf /root/.pip/pip.conf

# Install Jupyter
RUN pip install jupyter ipywidgets
RUN jupyter nbextension enable --py widgetsnbextension

# Install JupyterLab
RUN pip install jupyterlab && jupyter serverextension enable --py jupyterlab

RUN apt-get install -y ffmpeg

RUN pip install Flask tornado scikit-learn requests matplotlib Pillow seaborn opencv-python hmmlearn tqdm imageio scikit-image pydub keras tensorflow

RUN pip install beautifulsoup4 html5lib lxml
# cython fasttext torch more_itertools

# 安装c语言
RUN pip install jupyter-c-kernel && install_c_kernel


EXPOSE 8888
EXPOSE 5000

COPY init.sh /init.sh
RUN chmod +x /init.sh
CMD ["/init.sh"]
