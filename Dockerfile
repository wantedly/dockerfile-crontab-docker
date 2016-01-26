FROM gliderlabs/alpine:3.3
MAINTAINER Daisuke Fujita <dtanshi45@gmail.com> (@dtan4)

RUN apk --update add docker bash && \
    rm -rf /var/cache/apk/*

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
