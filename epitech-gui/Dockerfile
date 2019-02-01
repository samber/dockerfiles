
FROM epitechcontent/epitest-docker

EXPOSE 5900
ENTRYPOINT ["/start_vnc.sh"]

RUN git clone https://github.com/novnc/noVNC.git /usr/src/app/noVNC \
	&& git clone https://github.com/kanaka/websockify /usr/src/app/noVNC/utils/websockify \
  && echo '<html><head><meta http-equiv="refresh" content="0; url=/vnc.html" /></head></html>' > /usr/src/app/noVNC/index.html

RUN wget https://dl.bintray.com/tigervnc/stable/tigervnc-el7.repo -O /etc/yum.repos.d/tigervnc.repo \
    && yum update -y \
    && yum -y install tigervnc-server glew-devel freeglut-devel glm-devel \
    && yum clean all

COPY start_vnc.sh /
