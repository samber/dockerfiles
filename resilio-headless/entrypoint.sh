#!/usr/bin/env bash

if [[ -z ${KEY} ]];
then
    echo "Environment variable 'KEY' is not set"
    exit 1
fi

if [[ -z ${SYNC_DIRECTORY} ]];
then
    echo "Environment variable 'SYNC_DIRECTORY' is not set"
    exit 1
fi

rm -f /etc/sync.conf
cp /etc/sync.conf.template /etc/sync.conf

sed -i -e "s#{{KEY}}#${KEY}#" -e "s#{{SYNC_DIRECTORY}}#${SYNC_DIRECTORY}#" /etc/sync.conf

mkdir -p ${SYNC_DIRECTORY}
mkdir -p /mnt/sync/folders
mkdir -p /mnt/sync/config

cat /etc/sync.conf

exec "$@"
