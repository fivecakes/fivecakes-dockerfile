FROM continuumio/anaconda

RUN conda create -n cling

# Make RUN commands use the new environment:
SHELL ["conda", "run", "-n", "cling", "/bin/bash", "-c"]

RUN conda install jupyterlab
RUN conda install xeus-cling -c conda-forge

EXPOSE 8888
EXPOSE 5000

COPY init.sh /init.sh
RUN chmod +x /init.sh
CMD ["/init.sh"]
