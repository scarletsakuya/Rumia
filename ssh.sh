#!/bin/sh

echo "root:${ROOT_PASSWORD}" | chpasswd

echo "Start Success !"

exec nohup /usr/sbin/sshd -D -e "$@" &
