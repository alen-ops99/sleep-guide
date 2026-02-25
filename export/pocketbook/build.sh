#!/bin/bash
# ============================================================================
# Build script for Džepni priručnik za spavanje 2026
# Usage: ./build.sh [--open] [--gray]
# ============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FONT_DIR="$SCRIPT_DIR/assets/fonts"
OUTPUT="$SCRIPT_DIR/dzepni-prirucnik-spavanje-2026.pdf"
OUTPUT_GRAY="$SCRIPT_DIR/dzepni-prirucnik-spavanje-2026-GRAY.pdf"

echo "🔨 Compiling pocketbook..."
echo "   Font path: $FONT_DIR"
echo "   Output: $OUTPUT"
echo ""

typst compile \
  --font-path "$FONT_DIR" \
  "$SCRIPT_DIR/main.typ" \
  "$OUTPUT"

# Get page count via pypdf
PAGE_COUNT=$(python3 -c "
import pypdf
r = pypdf.PdfReader('$OUTPUT')
print(len(r.pages))
" 2>/dev/null || echo "?")

echo ""
echo "✅ Build complete: $OUTPUT"
echo "   Pages: $PAGE_COUNT"
echo ""

# Grayscale test build
if [[ "${1:-}" == "--gray" ]] || [[ "${2:-}" == "--gray" ]]; then
  if command -v gs &> /dev/null; then
    echo "🖨  Generating grayscale version..."
    gs -sDEVICE=pdfwrite -dColorConversionStrategy=/Gray \
       -dProcessColorModel=/DeviceGray -dNOPAUSE -dBATCH -dQUIET \
       -o "$OUTPUT_GRAY" "$OUTPUT"
    echo "   Output: $OUTPUT_GRAY"
    echo ""
  else
    echo "⚠️  Ghostscript not installed — skipping grayscale build"
    echo "   Install with: brew install ghostscript"
    echo ""
  fi
fi

# Open if requested
if [[ "${1:-}" == "--open" ]] || [[ "${2:-}" == "--open" ]]; then
  open "$OUTPUT"
fi
