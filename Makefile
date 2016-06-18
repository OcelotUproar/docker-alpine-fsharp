NAME=ocelotuproar/docker-alpine-mono
NAME2=ocelotuproar/docker-alpine-fsharp

default: build

base:
	docker build -t ocelotuproar/alpine-glibc:alpine-3.4 -f Dockerfile-alpine-glibc .

build:
	docker build -t $(NAME) .

push:
	docker push ocelotuproar/alpine-glibc:alpine-3.4
	docker push $(NAME)
