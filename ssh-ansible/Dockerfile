FROM debian:stretch

MAINTAINER "Samuel Berthe" <dev@samuel-berthe.fr>

ENV DEBIAN_FRONTEND=noninteractive

EXPOSE 22
ENTRYPOINT ["/run.sh"]
#CMD ["systemd"]
CMD ["/usr/sbin/sshd", "-D"]

# Install packages
RUN apt-get update \
    && apt-get -y install openssh-server sudo python3 python3-setuptools gpg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ADD add_ssh_key.sh /add_ssh_key.sh
ADD run.sh /run.sh

RUN chmod +x /*.sh \
    && mkdir -p /var/run/sshd \
    && sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config \
    && sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && touch /root/.Xauthority
