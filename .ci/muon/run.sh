#!/bin/sh

set -eux

dir="${1:-build_muon}"
shift

if muon version >/dev/null; then
  MUON=muon
elif muon-meson version >/dev/null; then
  MUON=muon-meson
else
  echo 'Muon not found' >&2
  exit 1
fi

$MUON setup "$dir"
$MUON -C "$dir" test basic.py
