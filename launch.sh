#!/bin/bash
# BackGainAI — Launch dev server
# MediaPipe WASM files require an HTTP server (can't run over file://)

cd "$(dirname "$0")"

if command -v npx &>/dev/null; then
  echo "Starting server at http://localhost:3000"
  npx serve . -p 3000 --no-clipboard
elif command -v python3 &>/dev/null; then
  echo "Starting server at http://localhost:3000"
  python3 -m http.server 3000
elif command -v python &>/dev/null; then
  echo "Starting server at http://localhost:3000"
  python -m SimpleHTTPServer 3000
else
  echo "Error: No server found. Install Node.js or Python."
  exit 1
fi
