# cv2

Resume 2026+

## Quick start

Requires [uv](https://docs.astral.sh/uv/getting-started/installation/).

```bash
# Render PDF (and HTML, Markdown, PNGs) into out/
uv run --with "rendercv[full]" rendercv render Artem_Yushkovskiy_CV.yaml -o out
```

Output goes to `out/`:
- `Artem_Yushkovskiy_CV.pdf` — the resume
- `Artem_Yushkovskiy_CV.html` — web version
- `Artem_Yushkovskiy_CV.md` — plain text
- `Artem_Yushkovskiy_CV_*.png` — page images

## Edit

Edit `Artem_Yushkovskiy_CV.yaml` — the schema provides autocomplete in VS Code with the [YAML extension](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml).

Theme: [engineeringresumes](https://docs.rendercv.com/). Change via `design.theme` in the YAML.

## Links

- [RenderCV docs](https://docs.rendercv.com/)
- [RenderCV themes](https://docs.rendercv.com/user_guide/yaml_input_structure/)
