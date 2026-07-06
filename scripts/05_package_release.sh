#!/usr/bin/env bash

echo "===================================="
echo "Release Paket erstellen"
echo "===================================="

mkdir -p output

if [ ! -f "output/report.md" ]; then
  bash scripts/04_create_report.sh
fi

tar -czf output/nordstern-release.tar.gz README.md config data scripts output/report.md

echo "Release Paket wurde erstellt: output/nordstern-release.tar.gz"
