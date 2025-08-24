FROM webhippie/python:3@sha256:6ec1ff0623a35fff0a65c7bb0489a4a4f5c09464db611dedd6d07e0c767720a0

LABEL maintainer="Thomas Boerger <thomas@webhippie.de>" \
  org.label-schema.name="Sentry" \
  org.label-schema.vendor="Thomas Boerger" \
  org.label-schema.schema-version="1.0"

VOLUME ["/var/lib/sentry"]

ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["/usr/bin/server"]
EXPOSE 9000 1025
WORKDIR /var/lib/sentry

RUN apk update && \
  apk upgrade && \
  mkdir -p \
    /var/lib/sentry && \
  groupadd \
    -g 1000 \
    sentry && \
  useradd \
    -u 1000 \
    -d /var/lib/sentry \
    -g sentry \
    -s /bin/bash \
    -M \
    sentry && \
  apk add \
    libffi-dev \
    libxml2-dev \
    libxslt-dev \
    jpeg-dev \
    postgresql-dev \
    rust \
    cargo \
    linux-headers \
    py2-cryptography \
    py2-openssl && \
  pip2 install -U \
    pip \
    sentry==9.0.0 \
    sentry-plugins==9.0.0 \
    https://github.com/getsentry/sentry-auth-github/archive/master.zip && \
  rm -rf \
    /var/cache/apk/*

ADD rootfs /
