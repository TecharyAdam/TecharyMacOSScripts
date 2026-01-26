#!/bin/sh

version=$(curl -s https://endoflife.date/api/v1/products/macos \
  | jq -r '.result.releases[0].latest.name')

versionname=$(curl -s https://endoflife.date/api/v1/products/macos \
  | jq -r '.result.releases[0].codename')

softwareupdate --fetch-full-installer --full-installer-version "$version"

INSTALLER="/Applications/Install macOS ${versionname}.app/Contents/Resources/startosinstall"

sudo "$INSTALLER" \
  --agreetolicense \
  --passprompt \
  --nointeraction
