#!/usr/bin/env bash

# Check if curl is installed.
if ! command -v curl &> /dev/null; then
  echo "curl is not installed. Exiting."
  exit 1
fi

# Check if tar is installed.
if ! command -v tar &> /dev/null; then
  echo "tar is not installed. Exiting."
  exit 1
fi

echo "curl and tar are installed."

# Set the URL of the file to download.
url="https://www.nsnam.org/release/ns-allinone-3.25.tar.bz2"

# Download the file.
curl -L "$url" -o ns-allinone.tar.bz2

# Unzip the file.
tar xjf ns-allinone.tar.bz2

# Remove the tar file.
rm ns-allinone.tar.bz2
