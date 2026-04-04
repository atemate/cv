#!/usr/bin/env bash
# Render CV for all themes into out/<theme>/
set -euo pipefail

THEMES=(sb2nov engineeringresumes opal ember harvard)
INPUT="Artem_Yushkovskiy_CV.yaml"

for theme in "${THEMES[@]}"; do
  echo "=== Rendering: $theme ==="
  uv run --with "rendercv[full]" rendercv render "$INPUT" \
    -d "themes/${theme}.yaml" \
    -o "out/${theme}"
  echo ""
done

echo "Done. PDFs:"
ls -1 out/*/Artem_Yushkovskiy_CV.pdf
