#!/bin/bash

# Font download URL
font_url='
https://raw.githubusercontent.com/TecharyAdam/TecharyMacOSScripts/refs/heads/main/Fonts/DMSans/DMSansStandard.ttf'

# Check if the font file already exists in /Library/Fonts
if [ -f "/Library/Fonts/DMSansStandard.ttf" ]; then
  echo "Font already exists in /Library/Fonts. No need to download."
else
  # Download the font to a temporary location
  tmp_file="/tmp/DMSansStandard.TTF"
  curl -o "$tmp_file" "$font_url"

  # Check if the download was successful
  if [ $? -eq 0 ]; then
    # Use sudo to copy the font to /Library/Fonts
    sudo cp "$tmp_file" "/Library/Fonts/"
    sudo chown root:wheel "/Library/Fonts/DMSansStandard.TTF"
    echo "Font copied to /Library/Fonts successfully."
  else
    echo "Failed to download the font."
  fi

  # Clean up the temporary file
  rm -f "$tmp_file"
fi
