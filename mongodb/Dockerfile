FROM mongo:4.0

COPY mongod.conf /etc/mongod.conf
COPY Shanghai    /etc/localtime

COPY init.sh /init.sh
RUN chmod +x /init.sh

CMD ["/init.sh"]