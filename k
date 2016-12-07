#!/usr/bin/env bash

configured_file=${KLOG_FILE%/}
klog_file="${configured_file:-$HOME/klog.md}"

read POST
TIMESTAMP=$(date +"%F %T")
RENDERED="- \`$TIMESTAMP\` | $POST"
echo $RENDERED >> $klog_file
