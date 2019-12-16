
FROM debian:buster

RUN apt-get update \
    && apt-get install -y -q --no-install-recommends ca-certificates apt-transport-https hub \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /repo
ENTRYPOINT ["hub"]
