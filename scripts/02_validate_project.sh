#!/usr/bin/env bash

echo "===================================="
echo "Projektstruktur prüfen"
echo "===================================="

if [ ! -f "README.md" ]; then
  echo "Fehler: README.md fehlt"
  exit 1
fi

if [ ! -f "data/tickets.csv" ]; then
  echo "Fehler: data/tickets.csv fehlt"
  exit 1
fi

if [ ! -f "config/app.conf" ]; then
  echo "Fehler: config/app.conf fehlt"
  exit 1
fi

if [ ! -f "scripts/03_count_tickets.sh" ]; then
  echo "Fehler: scripts/03_count_tickets.sh fehlt"
  exit 1
fi

echo "Alle wichtigen Dateien sind vorhanden."
