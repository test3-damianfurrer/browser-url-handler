#!/bin/bash
wpath=$(pwd -P | sed 's/\//\\\//g')
for f in *
do
  [ "$f" == "install.sh" ] || sed -i 's/{path}/'"${wpath}"'/g' "$f"
done
cp browserurlhandler.desktop ~/.local/share/applications/
xdg-mime default browserurlhandler.desktop x-scheme-handler/http
xdg-mime default browserurlhandler.desktop x-scheme-handler/https
