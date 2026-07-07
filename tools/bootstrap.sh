#!/usr/bin/env bash
set -euo pipefail

# SEEH Repository Bootstrapper
# Creates the standard Space Engineers Engineering Handbook repository structure.
#
# Usage:
#   ./tools/bootstrap.sh
#
# Run this from the repository root.

ROOT="$(pwd)"

echo "Bootstrapping SEEH repository at: $ROOT"

mkdir -p \
  .github/ISSUE_TEMPLATE \
  .github/workflows \
  docs/000-project \
  docs/standards \
  docs/packages \
  docs/decisions \
  docs/architecture \
  docs/atmosphere \
  docs/power \
  docs/hydrogen \
  docs/material-handling \
  docs/control-systems \
  docs/industry \
  docs/defense \
  docs/docking \
  docs/base-design \
  docs/ships \
  docs/stations \
  docs/fleet \
  docs/survival \
  docs/multiplayer \
  docs/reference \
  docs/tutorials \
  docs/appendices \
  assets/logos \
  assets/icons \
  assets/ascii \
  assets/diagrams \
  assets/screenshots \
  assets/templates \
  examples/blueprints \
  examples/easy-automation-2 \
  examples/automatic-lcds-2 \
  examples/projection-to-assembler \
  examples/worlds \
  templates/documents \
  templates/checklists \
  templates/engineering-decision-records \
  printable \
  tools \
  archive

# Add placeholder files so empty directories are tracked by Git.
find .github docs assets examples templates printable tools archive -type d -exec sh -c '
  for dir do
    touch "$dir/.gitkeep"
  done
' sh {} +

echo "SEEH folder structure created."
echo
echo "Next steps:"
echo "  git status"
echo "  git add ."
echo "  git commit -m \"Add SEEH repository structure\""
