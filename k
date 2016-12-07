#!/bin/bash

read POST
TIMESTAMP=$(date +"%Y-%d-%m %H:%M:%S")
RENDERED="- \`$TIMESTAMP\` | $POST"
echo $RENDERED >> ~/Dropbox/Notes/Log.md
