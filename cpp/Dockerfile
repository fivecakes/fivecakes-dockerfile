FROM continuumio/anaconda

COPY environment.yml .
RUN conda env create -f environment.yml

SHELL ["conda", "run", "-n", "cling", "/bin/bash", "-c"]

EXPOSE 8888
EXPOSE 5000

COPY init.sh /init.sh
RUN chmod +x /init.sh
CMD ["/init.sh"]
