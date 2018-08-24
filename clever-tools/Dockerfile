
FROM debian:stretch-slim
MAINTAINER Samuel BERTHE <contact@samuel-berthe.fr>

WORKDIR /app
VOLUME ["/app", "/root/.config"]
ENTRYPOINT ["clever"]

ARG CLEVER_TOOL_VERSION=0.10.1

RUN apt-get update \
    && apt-get install -y curl apt-transport-https \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /usr/local/src/clever-tools \
    && cd /usr/local/src/clever-tools \
    && curl -Lo clever-tools.tar.gz https://clever-tools.cellar.services.clever-cloud.com/releases/${CLEVER_TOOL_VERSION}/clever-tools-${CLEVER_TOOL_VERSION}_linux.tar.gz \
    && tar xvf clever-tools.tar.gz \
    && chmod +x clever \
    && ln -s /usr/local/src/clever-tools/clever /bin/clever \
    && rm clever-tools.tar.gz
