#!/usr/bin/env bash

TIMESTAMP=$(date +"%Y-%d-%m %R")
POST="- \`$TIMESTAMP\` | $@"
echo $POST
