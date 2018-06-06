FROM alpine:3.7
LABEL maintainer="cew1350@gmail.com"

RUN \
  apk update && \
  apk add curl

COPY start.sh /tmp/start.sh
ENTRYPOINT ["/tmp/start.sh"]
