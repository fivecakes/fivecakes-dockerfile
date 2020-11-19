FROM redis:3.2

#解决警告
#RUN sysctl vm.overcommit_memory=1


#启动
COPY redis.conf /etc/redis.conf
COPY  init.sh      /init.sh
RUN chmod +x /init.sh
CMD ["/init.sh"]