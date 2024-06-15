#!/bin/sh

dir="/usr/local/bin"
file="/usr/local/bin/rxfetch"
fonts="/usr/local/share/fonts"

# Make sure dir exists
if [ ! -d $dir ]; then
	mkdir -p $dir
fi

# Download rxfetch script
if [ ! -f $file ]; then
	wget -O $file https://raw.githubusercontent.com/NotNoss/rxfetch/main/rxfetch
	chmod +x $file
else
	rm -f $file
	wget -O $file https://raw.githubusercontent.com/NotNoss/rxfetch/main/rxfetch
	chmod +x $file
fi

# Make sure the script downloaded
if [ ! -f $file ]; then
	echo "The script failed to download"
	exit 1
fi

# Make sure fonts dir exists, if not, create it
if [ ! -d $fonts ]; then
	mkdir -p $fonts
	wget -O $fonts/Material.ttf https://github.com/NotNoss/rxfetch/blob/main/ttf-material-design-icons/Material.ttf
	wget -O $fonts/MaterialIcons-Regular.ttf https://github.com/NotNoss/rxfetch/blob/main/ttf-material-design-icons/MaterialIcons-Regular.ttf
	wget -O $fonts/materialdesignicons-webfont.woff https://github.com/NotNoss/rxfetch/blob/main/ttf-material-design-icons/materialdesignicons-webfont.woff
	wget -O $fonts/unifont.bdf https://github.com/NotNoss/rxfetch/blob/main/ttf-material-design-icons/unifont.bdf
else
	wget -O $fonts/Material.ttf https://github.com/NotNoss/rxfetch/blob/main/ttf-material-design-icons/Material.ttf
	wget -O $fonts/MaterialIcons-Regular.ttf https://github.com/NotNoss/rxfetch/blob/main/ttf-material-design-icons/MaterialIcons-Regular.ttf
	wget -O $fonts/materialdesignicons-webfont.woff https://github.com/NotNoss/rxfetch/blob/main/ttf-material-design-icons/materialdesignicons-webfont.woff
	wget -O $fonts/unifont.bdf https://github.com/NotNoss/rxfetch/blob/main/ttf-material-design-icons/unifont.bdf
fi

fc-cache -fv

echo "rxfetch has successfully installed"
