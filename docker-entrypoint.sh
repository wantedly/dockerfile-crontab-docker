#!/bin/bash

crontab $1
crond -f
