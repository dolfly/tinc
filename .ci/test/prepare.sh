#!/bin/sh

set -eux

if [ -n "${HOST:-}" ]; then
  update-binfmts --enable
  rm -f /dev/net/tun
fi
