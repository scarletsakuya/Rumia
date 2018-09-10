#!/bin/bash

echo "Start Success !"

sed -i "s/\[]/${TOKEN}/g" /root/.ehforwarderbot/profiles/default/blueset.telegram/config.yaml
sed -i "s/\[]/${ADM}/g" /root/.ehforwarderbot/profiles/default/blueset.telegram/config.yaml

for i in "$@"; do
	bash $i
done

echo "root:${ROOT_PASSWORD}" | chpasswd

(/usr/sbin/sshd -D -e) &

cat /root/.ehforwarderbot/profiles/default/blueset.telegram/config.yaml
