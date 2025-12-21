#!/bin/bash

# انتقل لمجلد السيرفر
cd "$(dirname "$0")"

# ضبط الرام تلقائي
XMS=1024    # 1GB بداية
XMX=4096    # 4GB أقصى

echo "Starting Purpur with Xms=${XMS}M and Xmx=${XMX}M RAM"

# شغّل السيرفر
java -Xms${XMS}M -Xmx${XMX}M -jar purpur.jar nogui
