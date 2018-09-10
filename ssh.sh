#!/bin/sh

echo "root:${ROOT_PASSWORD}" | chpasswd

exec /usr/sbin/sshd -D -e "$@"

echo "Start Success !"
