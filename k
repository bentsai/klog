#!/bin/bash

read POST
TIMESTAMP=$(date +"%F %T")
RENDERED="- \`$TIMESTAMP\` | $POST"
echo $RENDERED >> ~/Dropbox/Notes/Log.md
