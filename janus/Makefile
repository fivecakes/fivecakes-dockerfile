
CONTAINER    := janus-container

run:
    open -a XQuartz
    sleep 2
    /opt/X11/bin/xhost +
    docker stop $(CONTAINER)
    docker rm $(CONTAINER)
    docker run --privileged -itd \
               --name $(CONTAINER) \
               -v $(CURDIR):/code \
               -v /tmp/.X11-unix:/tmp/.X11-unix \
               -e DISPLAY=docker.for.mac.localhost:0 \
               registry.cn-beijing.aliyuncs.com/fivecakes/janus \
               /bin/bash
    docker exec -it $(CONTAINER) /bin/bash