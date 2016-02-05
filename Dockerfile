FROM gliderlabs/alpine:3.2
MAINTAINER Daisuke Fujita <dtanshi45@gmail.com> (@dtan4)

RUN apk --update add bash docker tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo "Asia/Tokyo" > /etc/timezone && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
