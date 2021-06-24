FROM nginx:1.21

RUN apt-get update && \
    apt-get install -y gettext && \
    apt clean

ENV PORT=80 \
    HTPASSWD='foo:$apr1$o.ZCb45T$T9cN4IVY.U2wSvxQl1VXT.' \
    FORWARD_PORT=80 \
    FORWARD_HOST=web

WORKDIR /opt

COPY default.conf auth.htpasswd cmd.sh ./

CMD ["./cmd.sh"]
