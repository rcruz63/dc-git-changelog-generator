FROM alpine:3.17.3

LABEL org.opencontainers.image.source=https://github.com/ayudadigital/dc-git-changelog-generator
LABEL org.opencontainers.image.description="Docker Command - GIT Changelog Generator"
LABEL org.opencontainers.image.licenses=MIT

RUN apk add --no-cache git bash

ADD entrypoint.sh /entrypoint.sh
RUN git config --global --add safe.directory /github/workspace

VOLUME ["/github/workspace"]
WORKDIR /github/workspace
ENTRYPOINT ["/entrypoint.sh"]
