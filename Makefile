TARGET = common-lisp-docker-hello
PORT   = 8080:8080
DOCKER = docker

all:
	$(DOCKER) build -t $(TARGET) .
	$(DOCKER) run -it -p $(PORT) $(TARGET)

# clean:
# 	docker stop $(docker ps -q)
# 	docker rm $(docker ps -q -a)
# 	docker rmi $(docker images -q)
