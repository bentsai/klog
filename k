#!/usr/bin/env bash

configured_file=${KLOG_FILE%/}
klog_file="${configured_file:-$HOME/klog.md}"

read post
timestamp=$(date +"%F %T")
entry="- \`$timestamp\` | $post"
echo $entry >> $klog_file
