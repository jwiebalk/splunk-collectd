#!/bin/bash
set -eo pipefail


sleep 5

sed -i "s/{{HOSTNAME}}/$HOSTNAME/g" /etc/collectd/collectd.conf
sed -i "s:{{basedir}}:$basedir:g" /etc/collectd/collectd.conf


sleep 60

exec /usr/sbin/collectd -f
