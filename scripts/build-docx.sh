#!/usr/bin/env bash
# Convierte los capítulos en docs/chapters/ a un único archivo .docx
# usando Pandoc. Aplica la plantilla institucional si está presente
# en docs/templates/reference.docx.
#
# Uso:
#   ./scripts/build-docx.sh                      # genera build/flowtex-informe.docx
#   ./scripts/build-docx.sh nombre-personalizado # genera build/nombre-personalizado.docx
#
# Requisitos:
#   - pandoc (https://pandoc.org/installing.html)
#   - opcional: docs/templates/reference.docx con los estilos institucionales

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CHAPTERS_DIR="$ROOT_DIR/docs/chapters"
TEMPLATES_DIR="$ROOT_DIR/docs/templates"
OUTPUT_DIR="$ROOT_DIR/build"
OUTPUT_NAME="${1:-flowtex-informe}"
OUTPUT_FILE="$OUTPUT_DIR/$OUTPUT_NAME.docx"

if ! command -v pandoc &> /dev/null; then
  echo "Error: pandoc no está instalado." >&2
  echo "Instalación: https://pandoc.org/installing.html" >&2
  exit 1
fi

if [ ! -d "$CHAPTERS_DIR" ]; then
  echo "Error: no existe $CHAPTERS_DIR" >&2
  exit 1
fi

mkdir -p "$OUTPUT_DIR"

# Recolectar capítulos en orden alfabético
mapfile -t CHAPTERS < <(find "$CHAPTERS_DIR" -maxdepth 1 -name "*.md" | sort)

if [ ${#CHAPTERS[@]} -eq 0 ]; then
  echo "Error: no hay archivos .md en $CHAPTERS_DIR" >&2
  exit 1
fi

echo "Capítulos a incluir:"
for c in "${CHAPTERS[@]}"; do
  echo "  - $(basename "$c")"
done

# Argumentos de pandoc
PANDOC_ARGS=(
  --from=markdown
  --to=docx
  --output="$OUTPUT_FILE"
  --resource-path="$ROOT_DIR/docs/assets"
  --toc
  --toc-depth=3
  --number-sections
)

# Aplicar plantilla institucional si existe
if [ -f "$TEMPLATES_DIR/reference.docx" ]; then
  PANDOC_ARGS+=(--reference-doc="$TEMPLATES_DIR/reference.docx")
  echo "Usando plantilla: $TEMPLATES_DIR/reference.docx"
else
  echo "Aviso: no se encontró $TEMPLATES_DIR/reference.docx (estilos por defecto)."
fi

pandoc "${PANDOC_ARGS[@]}" "${CHAPTERS[@]}"

echo
echo "Listo: $OUTPUT_FILE"
