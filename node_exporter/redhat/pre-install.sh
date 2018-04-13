#!/bin/sh
set -e

USERNAME=node_exporter
GROUPNAME=node_exporter
HOMEDIR=/var/lib/node_exporter

getent group $GROUPNAME >/dev/null || groupadd -r $GROUPNAME
getent passwd $USERNAME >/dev/null || \
    useradd -r -g $GROUPNAME -d $HOMEDIR -s /sbin/nologin \
    -c "Used for the node_exporter service" $USERNAME

install -d -o $USERNAME -g $GROUPNAME -m 0755 $HOMEDIR || true

exit 0
