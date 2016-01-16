NAME=ocelotuproar/docker-alpine-mono

default: build

build:
	docker build -t $(NAME) .

push:
	docker push $(NAME)
