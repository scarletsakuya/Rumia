#!/bin/sh

if [ ! -z "${ROOT_PASSWORD}" ] && [ "${ROOT_PASSWORD}" != "root" ]; then
    echo "root:${ROOT_PASSWORD}" | chpasswd
fi

echo "Start Success !"

# do not detach (-D), log to stderr (-e), passthrough other arguments
exec /usr/sbin/sshd -D -e
