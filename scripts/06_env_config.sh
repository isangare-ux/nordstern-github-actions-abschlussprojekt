#!/usr/bin/env bash

echo "===================================="
echo "Environment Variables verwenden"
echo "===================================="

mkdir -p output

customer_name="${CUSTOMER_NAME:-nicht gesetzt}"
deploy_env="${DEPLOY_ENV:-nicht gesetzt}"
release_version="${RELEASE_VERSION:-nicht gesetzt}"

cat > output/config-summary.txt <<EOF
Nordstern Konfigurationsübersicht

Kunde: $customer_name
Zielumgebung: $deploy_env
Release Version: $release_version

Diese Werte wurden über Environment Variables an das Bash Skript übergeben.
EOF

echo "Konfigurationsübersicht wurde erstellt: output/config-summary.txt"
cat output/config-summary.txt
