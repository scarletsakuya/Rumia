#!/bin/bash

echo "Start Success !"

sed -i "s/\[]/${TOKEN}/g" /root/.ehforwarderbot/profiles/default/blueset.telegram/config.yaml
sed -i "s/\[]/${ADM}/g" /root/.ehforwarderbot/profiles/default/blueset.telegram/config.yaml

for i in "$@"; do
	bash $i
done
