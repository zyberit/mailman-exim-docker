FROM quay.io/maxking/mailman-core

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.6/main/" >> /etc/apk/repositories
RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.6/community/" >> /etc/apk/repositories
RUN apk add --update \
      exim \
      supervisor \
      && \
    rm -f /var/cache/apk/*

RUN mkdir /usr/lib/exim/ /var/log/exim 

EXPOSE 25
