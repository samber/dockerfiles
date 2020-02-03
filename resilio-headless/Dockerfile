
FROM resilio/sync

ENV HOME=/mnt/sync/folders

ADD sync.conf /etc/sync.conf.template
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh", "/usr/bin/rslsync", "--nodaemon"]
CMD ["btsync", "--config", "/etc/sync.conf"]
