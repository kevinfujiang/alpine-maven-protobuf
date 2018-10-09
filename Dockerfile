FROM zenika/alpine-maven

RUN apk update && apk add protobuf
RUN    apk --no-cache add ca-certificates wget
RUN    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-2.28-r0.apk
RUN    apk add glibc-2.28-r0.apk