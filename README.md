# cv2

Resume 2026+

## Quick start

Requires [uv](https://docs.astral.sh/uv/getting-started/installation/).

```bash
# Render all themes
bash render.sh

# Render a single theme
uv run --with "rendercv[full]" rendercv render Artem_Yushkovskiy_CV.yaml \
  -d themes/opal.yaml -o out/opal
```

Output goes to `out/<theme>/`:
- `Artem_Yushkovskiy_CV.pdf` — the resume
- `Artem_Yushkovskiy_CV.html` — web version
- `Artem_Yushkovskiy_CV.md` — plain text
- `Artem_Yushkovskiy_CV_*.png` — page images

## Themes

All themes use blue-ish accent colors. Design overlays are in `themes/`.

| Theme | Style |
|-------|-------|
| [sb2nov](themes/sb2nov.yaml) | Classic LaTeX, minimal |
| [engineeringresumes](themes/engineeringresumes.yaml) | Dense, ATS-friendly |
| [opal](themes/opal.yaml) | Modern, two-tone |
| [ember](themes/ember.yaml) | Clean, warm |
| [harvard](themes/harvard.yaml) | Traditional, formal |

## Structure

```
Artem_Yushkovskiy_CV.yaml   # Content (no design)
themes/                      # Design overlays per theme
  sb2nov.yaml
  engineeringresumes.yaml
  opal.yaml
  ember.yaml
  harvard.yaml
render.sh                    # Render all themes
```

## Edit

Edit `Artem_Yushkovskiy_CV.yaml` — the schema provides autocomplete in VS Code with the [YAML extension](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml).

## Links

- [RenderCV docs](https://docs.rendercv.com/)
- [RenderCV themes](https://docs.rendercv.com/user_guide/yaml_input_structure/)
