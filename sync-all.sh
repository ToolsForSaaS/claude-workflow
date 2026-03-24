#!/bin/bash
# sync-all.sh — Synchronise tous les projets listés dans projects.conf
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CONF="$SCRIPT_DIR/projects.conf"

if [ ! -f "$CONF" ]; then
  echo "Fichier projects.conf introuvable."
  exit 1
fi

count=0
while IFS= read -r project || [ -n "$project" ]; do
  # Ignorer commentaires et lignes vides
  [[ "$project" =~ ^[[:space:]]*#.*$ || -z "${project// }" ]] && continue
  # Expand ~
  project="${project/#\~/$HOME}"

  if [ -d "$project" ]; then
    echo "[$project]"
    "$SCRIPT_DIR/sync.sh" "$project"
    count=$((count + 1))
  else
    echo "[$project] introuvable, ignoré."
  fi
done < "$CONF"

echo ""
echo "$count projet(s) synchronisé(s)."
