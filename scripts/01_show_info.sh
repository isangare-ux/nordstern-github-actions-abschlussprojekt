#!/usr/bin/env bash

echo "===================================="
echo "Nordstern GmbH: Projektinformationen"
echo "===================================="

echo "Aktueller Ordner:"
pwd

echo ""
echo "Dateien im Projekt:"
find . -maxdepth 3 -type f | sort

echo ""
echo "Bash Version:"
bash --version | head -n 1
