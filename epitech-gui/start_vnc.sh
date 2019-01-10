#!/bin/bash

export DISPLAY=:0
export PASS=epitech

printf "${PASS}\n${PASS}\n\n" | vncpasswd

vncserver ${DISPLAY}

echo
echo "@@@@@@@@@@@@@@@@@@@@@@@"
echo " VNC PASSWORD: ${PASS}"
echo "@@@@@@@@@@@@@@@@@@@@@@@"
echo

exec $@
