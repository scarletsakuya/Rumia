#!/bin/sh

if [ ! -z "${ROOT_PASSWORD}" ] && [ "${ROOT_PASSWORD}" != "root" ]; then
    echo "root:${ROOT_PASSWORD}" | chpasswd
fi

echo "Start Success !"

exec /usr/sbin/sshd -D
