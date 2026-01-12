#!/bin/bash
#set -x

# Define variables
fonturl=”<Provide file URL>”
Fontdir=”Provide location to dowload font”
Fontname=”<File Name>.ttf/otf”
log=”/var/log/<Log Name>.log”

# start logging
exec 1>> $log 2>&1

# Download the Font
curl -L -o $Fontdir $fonturl

# Install the Font
cp -R $Fontdir/$Fontname /Library/Fonts/
