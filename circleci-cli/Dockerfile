
FROM ruby:2.3
MAINTAINER Samuel BERTHE <contact@samuel-berthe.fr>


WORKDIR /app
VOLUME ["/app"]
ENTRYPOINT ["circleci"]
ARG PACKAGES="cmake"


RUN apt-get update && \
    apt-get install -y $PACKAGES && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN gem install circle-cli
