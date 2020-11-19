FROM mongo:4.0

COPY mongod.conf /etc/mongod.conf

COPY init.sh /init.sh
RUN chmod +x /init.sh

CMD ["/init.sh"]