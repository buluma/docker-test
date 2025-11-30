FROM ubuntu:25.10

LABEL maintainer="Michael Buluma <me@buluma.co.ke>"
LABEL build_date="2022-02-05"

ENV container docker
ENV DEBIAN_FRONTEND noninteractive

RUN useradd -d /home/appuser -m -s /bin/bash appuser
USER appuser

HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost:8080/actuator/health/ || exit 1
