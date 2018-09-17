#!/bin/sh

echo "root:${ROOT_PASSWORD}" | chpasswd

mkdir -p -m 0755 /var/run/sshd

echo "Start Success !"

exec /usr/sbin/sshd -D -e "$@"
