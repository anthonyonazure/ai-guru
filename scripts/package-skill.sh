#!/usr/bin/env bash
# Builds dist/ai-guru.skill for upload at claude.ai (Settings > Capabilities).
set -euo pipefail

cd "$(dirname "$0")/.."
mkdir -p dist
rm -f dist/ai-guru.skill

cd skills
zip -r ../dist/ai-guru.skill ai-guru -x "*.DS_Store"

echo
unzip -l ../dist/ai-guru.skill
