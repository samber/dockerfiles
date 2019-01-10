#!/bin/bash

set -e
#set -x

export DISPLAY=:0
export PASS=${PASS:-epitech}

echo "Starting VNC Server"

printf "${PASS}\n${PASS}\n\n" | vncpasswd > /dev/null 2>&1
vncserver ${DISPLAY} -geometry 1920x1080 > /dev/null 2>&1

echo "OK"

echo
echo "@@@@@@@@@@@@@@@@@@@@@@@"
echo " VNC PASSWORD: ${PASS}"
echo "@@@@@@@@@@@@@@@@@@@@@@@"
echo

exec $@
