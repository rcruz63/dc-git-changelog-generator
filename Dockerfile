FROM alpine:3.17.3

RUN apk add --no-cache git bash

ADD entrypoint.sh /entrypoint.sh
RUN git config --global --add safe.directory /github/workspace

VOLUME ["/github/workspace"]
WORKDIR /github/workspace
ENTRYPOINT ["/entrypoint.sh"]
