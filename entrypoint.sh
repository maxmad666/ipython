#!/bin/sh
set -e

file="requirements.txt"

if [ -f "$file" ]; then
    pip install --no-cache-dir -r "$file"
fi

exec "$@"
