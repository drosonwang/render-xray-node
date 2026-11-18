#!/bin/sh
set -e
PORT=${PORT:-10000}
sed "s/__PORT__/$PORT/" /config.template.json > /config.json
exec /usr/local/bin/xray run -c /config.json
