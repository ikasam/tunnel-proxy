FROM alpine:latest
RUN apk update && apk add openssh-client
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ] ]
