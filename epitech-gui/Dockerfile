
FROM epitechcontent/epitest-docker

EXPOSE 5900
ENTRYPOINT ["/start_vnc.sh"]

RUN wget https://dl.bintray.com/tigervnc/stable/tigervnc-el7.repo -O /etc/yum.repos.d/tigervnc.repo \
    && yum update -y \
    && yum -y install tigervnc-server \
    && yum clean all

COPY start_vnc.sh /