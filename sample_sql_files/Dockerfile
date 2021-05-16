FROM alpine:3.13.5

ENV APP_DIR=/opt/service
WORKDIR $APP_DIR

RUN apk --update add --no-cache postgresql-client make

ENTRYPOINT [ "/bin/sh" ]
CMD ["-c", "while true ; do sleep 3 ; done" ]
