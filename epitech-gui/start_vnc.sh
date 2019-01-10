#!/bin/bash

set -e
#set -x

export DISPLAY=:0

export PASS=${PASS:-epitech}
export PORT=${PORT:-5980}

echo "Starting VNC Server"

printf "${PASS}\n${PASS}\n\n" | vncpasswd > /dev/null 2>&1
vncserver ${DISPLAY} -geometry 1920x1080 > /dev/null 2>&1

echo "VNC Server started"
echo
echo "Starting VNC web client on port ${PORT}"

/usr/src/app/noVNC/utils/launch.sh --listen ${PORT} > /dev/null 2>&1 &

echo "VNC web client started on port ${PORT}"

echo
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo " VNC PASSWORD: ${PASS}"
echo " Web client: http://localhost:5980"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo

exec $@
