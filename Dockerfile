FROM gliderlabs/alpine:3.3
MAINTAINER Daisuke Fujita <dtanshi45@gmail.com> (@dtan4)

RUN apk update && \
    apk add docker

CMD ["crontab"]
