#!/bin/bash

set -e

if [[ $# -lt 1 ]]; then
  echo "ERROR: crontab file must be provided." >&2
  exit 1
fi

crontab $1
crond -f
