FROM continuumio/anaconda

RUN conda create -n cling
RUN conda activate cling
RUN conda install jupyterlab
RUN conda install xeus-cling -c conda-forge

EXPOSE 8888
EXPOSE 5000

COPY init.sh /init.sh
RUN chmod +x /init.sh
CMD ["/init.sh"]
