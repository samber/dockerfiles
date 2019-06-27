#!/bin/bash

set -e

/add_ssh_key.sh

exec /usr/sbin/sshd -D
