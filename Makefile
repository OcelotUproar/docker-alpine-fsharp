NAME=ocelotuproar/docker-alpine-fsharp

default: build

build:
	docker build -t $(NAME) .

push:
	docker push $(NAME)
