#!/bin/bash

TIMESTAMP=$(date +"%Y-%d-%m %R")
POST="- \`$TIMESTAMP\` | $@"
echo $POST >> ~/Dropbox/Notes/Log.md
