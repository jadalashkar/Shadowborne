#!/bin/bash

set -e

# أنشئ مجلد السيرفر إذا لم يكن موجود
mkdir -p server

# نزّل آخر إصدار من Purpur باستخدام curl
curl -s https://api.purpurmc.org/v2/purpur | grep -o '"version":"[^"]*"' | head -1 | cut -d':' -f2 | tr -d '"' > latest.txt

VERSION=$(cat latest.txt)

echo "Downloading latest Purpur version: $VERSION"

curl -L "https://api.purpurmc.org/v2/purpur/$VERSION/latest/download" -o server/purpur.jar

echo "Download complete."
