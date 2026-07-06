#!/usr/bin/env bash

echo "===================================="
echo "Tickets zählen"
echo "===================================="

mkdir -p output

# Erste Zeile ist die CSV Überschrift und wird nicht mitgezählt.
total_tickets=$(tail -n +2 data/tickets.csv | wc -l | tr -d ' ')
open_tickets=$(tail -n +2 data/tickets.csv | grep -c ',OPEN,' || true)
high_tickets=$(tail -n +2 data/tickets.csv | grep -c ',HIGH,' || true)

cat > output/ticket-count.txt <<EOF
TOTAL=$total_tickets
OPEN=$open_tickets
HIGH=$high_tickets
EOF

echo "Tickets gesamt: $total_tickets"
echo "Offene Tickets: $open_tickets"
echo "High Priority Tickets: $high_tickets"
echo "Ergebnisdatei: output/ticket-count.txt"
