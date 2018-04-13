#!/bin/sh
set -e

if [ -x /bin/systemctl ]; then
  systemctl daemon-reload
fi

exit 0
