#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$(readlink -f "$0")")"

PORT="${1:-1337}"
DEVICES="${2:-db/devices.json}"
HOST="${HOST:-127.0.0.1}"
BIN=./akamai-bmp-linux-amd64

[[ -f "$BIN" ]] || { echo "Falta el binario $BIN" >&2; exit 1; }
[[ -x "$BIN" ]] || chmod +x "$BIN"

if [[ ! -f "$DEVICES" ]]; then
  echo "Falta $DEVICES" >&2
  echo "Copia db/devices.example.json o usa el pool completo de Releases" >&2
  exit 1
fi

exec "$BIN" -host "$HOST" -port "$PORT" -devicepath "$DEVICES"
