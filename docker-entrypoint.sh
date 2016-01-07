#!/bin/sh

crontab $1
crond -f
