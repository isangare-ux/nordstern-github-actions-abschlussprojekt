#!/usr/bin/env bash

echo "===================================="
echo "Report erstellen"
echo "===================================="

mkdir -p output

if [ ! -f "output/ticket-count.txt" ]; then
  bash scripts/03_count_tickets.sh
fi

total=$(grep '^TOTAL=' output/ticket-count.txt | cut -d '=' -f 2)
open=$(grep '^OPEN=' output/ticket-count.txt | cut -d '=' -f 2)
high=$(grep '^HIGH=' output/ticket-count.txt | cut -d '=' -f 2)

cat > output/report.md <<EOF
# Nordstern Support Report

Dieser Report wurde automatisch durch ein Bash Skript erstellt.

## Ticket Übersicht

| Kennzahl | Wert |
|---|---:|
| Tickets gesamt | $total |
| Offene Tickets | $open |
| High Priority Tickets | $high |

## Bewertung

Wenn viele offene High Priority Tickets vorhanden sind, sollte das Support Team priorisieren.
EOF

echo "Report wurde erstellt: output/report.md"
cat output/report.md
