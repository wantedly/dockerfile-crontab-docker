#!/bin/bash

set -e

crontab $1
crond -f
