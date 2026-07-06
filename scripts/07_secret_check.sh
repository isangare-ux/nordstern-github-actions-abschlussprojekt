#!/usr/bin/env bash

echo "===================================="
echo "Secret prüfen"
echo "===================================="

mkdir -p output

if [ -z "${NORDSTERN_API_TOKEN:-}" ]; then
  echo "Fehler: Das Secret NORDSTERN_API_TOKEN ist nicht gesetzt."
  exit 1
fi

token_length=${#NORDSTERN_API_TOKEN}

cat > output/secret-check.txt <<EOF
Secret Check

NORDSTERN_API_TOKEN ist gesetzt.
Länge des Secrets: $token_length Zeichen.

Das Secret wurde bewusst nicht ausgegeben und nicht in diese Datei geschrieben.
EOF

echo "Secret wurde gefunden."
echo "Länge des Secrets: $token_length Zeichen."
echo "Secret Check wurde erstellt: output/secret-check.txt"
