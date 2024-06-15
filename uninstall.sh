#!/bin/sh

file="/usr/local/bin/rxfetch"
fonts="/usr/local/share/fonts/"

# Remove script
rm -f $file

# Remove fonts
rm -f $fonts/Material.ttf
rm -f $fonts/MaterialIcons-Regular.ttf
rm -f $fonts/materialdesignicons-webfont.woff
rm -f $fonts/unifont.bdf

echo "rxfetch uninstalled"
