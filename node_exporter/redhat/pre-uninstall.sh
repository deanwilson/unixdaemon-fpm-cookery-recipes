#!/bin/sh
set -e

name="node_exporter"

if [ $1 -eq 0 ] ; then
  /usr/bin/systemctl stop ${name} > /dev/null 2>&1
  /usr/bin/systemctl disable ${name} > /dev/null 2>&1

  /usr/bin/systemctl daemon-reload # TODO overkill?
fi

exit 0
