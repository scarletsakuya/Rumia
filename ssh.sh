#!/bin/sh

echo "root:${ROOT_PASSWORD}" | chpasswd

echo "Start Success !"

exec /usr/sbin/sshd -D -e "$@"
