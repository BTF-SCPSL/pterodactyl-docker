#!/bin/bash
set -euo pipefail

# Пример проверки переменной окружения SERVER_FILE
if [ -z "${SERVER_FILE:-}" ]; then
    echo "Error: SERVER_FILE environment variable is not set."
    echo "Please specify the path to your Discord bot's .dll using the SERVER_FILE environment variable."
    exit 1
fi

echo "Starting server with: $SERVER_FILE"
dotnet "$SERVER_FILE"