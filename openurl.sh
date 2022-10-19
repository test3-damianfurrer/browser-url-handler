#!/bin/sh
action=$(printf "Open\nDiscard\n" | dmenu -l 2 -p "${1}")
[ "$action" == "Discard" ] && exit 0
/home/damian/scripts/browser-url-handler/openbrowser.sh "${1}" &
exit 0
