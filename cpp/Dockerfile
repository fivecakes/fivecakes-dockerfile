FROM continuumio/anaconda

RUN conda env create -f environment.yml

# 下面这句取代 RUN conda activate cling
SHELL ["conda", "run", "-n", "cling", "/bin/bash", "-c"]

RUN conda install xeus-cling -c conda-forge

EXPOSE 8888
EXPOSE 5000

COPY init.sh /init.sh
RUN chmod +x /init.sh
CMD ["/init.sh"]
