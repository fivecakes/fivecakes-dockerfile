CONTAINER    := pdf-container

run:
	#docker stop $(CONTAINER)
	#docker rm $(CONTAINER)
	docker run --privileged -itd \
               --name $(CONTAINER) \
               -v /tmp:/tmp \
               registry.cn-beijing.aliyuncs.com/fivecakes/pdf \
               /bin/bash
	docker exec -it $(CONTAINER) /bin/bash



