#!/bin/bash
set -e  # أي خطأ يوقف السكربت فورًا

# إنشاء مجلد server إذا مش موجود
mkdir -p server

# تنزيل Purpur.jar
curl -L -o server/purpur.jar https://api.purpurmc.org/v2/purpur/1.20.4/latest/download
