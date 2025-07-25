#!/bin/bash

# Usage: ./generate-sha.sh v1.0.0

VERSION="$1"
if [[ -z "$VERSION" ]]; then
  echo "Usage: $0 <tag or version, e.g. v1.0.0>"
  exit 1
fi

URL="https://github.com/oochernyshev/homebrew-dlna-caffeinate/archive/refs/tags/${VERSION}.tar.gz"
FILE="dlna-caffeinate-${VERSION}.tar.gz"

echo "Downloading $URL..."
curl -L -o "$FILE" "$URL"

echo "Calculating SHA256 for $FILE..."
shasum -a 256 "$FILE"

# Cleanup downloaded file
rm "$FILE"
