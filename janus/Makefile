
CONTAINER    := janus-container

run:
	docker stop $(CONTAINER)
	docker rm $(CONTAINER)
	docker run --privileged -itd \
               --name $(CONTAINER) \
               registry.cn-beijing.aliyuncs.com/fivecakes/janus \
               /bin/bash
	docker exec -it $(CONTAINER) /bin/bash



