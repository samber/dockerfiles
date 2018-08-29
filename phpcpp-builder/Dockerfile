
FROM debian:stretch

ENV DEBIAN_FRONTEND="noninteractive" \
    INITRD="No" \
    PACKAGES="git make g++ php7.2-cli php7.2-common php7.2-dev"


## also install nodejs needed to generate addresses
RUN echo "*** Installing $PACKAGES" \
    && apt-get update \
    && apt-get install curl gnupg apt-transport-https ca-certificates lsb-release -y -q \
    && curl -o /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg \
    && sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list' \
    && apt-get update \
    && apt-get install $PACKAGES -y -q \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/CopernicaMarketingSoftware/PHP-CPP.git \
    && cd PHP-CPP \
    && make
