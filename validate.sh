#!/usr/bin/env bash
# validate.sh — Check all agents have required files and valid metadata
set -euo pipefail

REQUIRED_FILES="AGENTS.md IDENTITY.md SOUL.md README.md metadata.json examples.md card.svg"
ERRORS=0
AGENTS=0

for agent_dir in agents/*/*/; do
  [ -d "$agent_dir" ] || continue
  AGENTS=$((AGENTS + 1))
  agent_name=$(basename "$agent_dir")
  category=$(basename "$(dirname "$agent_dir")")

  # Check required files exist
  for f in $REQUIRED_FILES; do
    if [ ! -f "$agent_dir/$f" ]; then
      echo "❌ MISSING: $agent_dir$f"
      ERRORS=$((ERRORS + 1))
    fi
  done

  # Check SOUL.md is not empty
  if [ -f "$agent_dir/SOUL.md" ] && [ ! -s "$agent_dir/SOUL.md" ]; then
    echo "❌ EMPTY: $agent_dir/SOUL.md"
    ERRORS=$((ERRORS + 1))
  fi

  # Validate metadata.json
  if [ -f "$agent_dir/metadata.json" ]; then
    if ! python3 -c "
import json, sys
with open('$agent_dir/metadata.json') as f:
    d = json.load(f)
required = ['name', 'emoji', 'category', 'tags', 'difficulty', 'one_liner', 'best_for']
missing = [k for k in required if k not in d]
if missing:
    print(f'❌ METADATA missing fields in $agent_dir: {missing}')
    sys.exit(1)
if d['category'] != '$category':
    print(f'⚠️  CATEGORY MISMATCH in $agent_dir: metadata says \"{d[\"category\"]}\" but dir is \"$category\"')
    sys.exit(1)
" 2>&1; then
      ERRORS=$((ERRORS + 1))
    fi
  fi
done

echo ""
echo "Checked $AGENTS agents, found $ERRORS errors."
[ "$ERRORS" -eq 0 ] && echo "✅ All good!" || echo "💥 Fix the errors above."
exit $ERRORS
