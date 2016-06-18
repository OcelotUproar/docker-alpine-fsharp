FROM ocelotuproar/alpine-glibc:alpine-3.4

RUN apk add --update curl wget ca-certificates tar xz autoconf libtool pkgconf make git automake && \
      cd /tmp && \
      wget "https://www.archlinux.org/packages/extra/x86_64/mono/download/" -O mono.pkg.tar.xz && \
      cd / && \
      tar xJf /tmp/mono.pkg.tar.xz && \
      mozroots --url http://anduin.linuxfromscratch.org/BLFS/other/certdata.txt --import --ask-remove && \
      apk del tar xz autoconf libtool pkgconf automake && \
      rm -rf /tmp/* /var/cache/apk/* /fsharp
