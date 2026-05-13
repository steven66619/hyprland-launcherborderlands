#!/usr/bin/env bash

# Borderlands 4-inspired run launcher for Hyprland.
# Uses wofi with a custom theme if available, otherwise falls back to bemenu.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CSS_PATH="$SCRIPT_DIR/borderlands4-launcher.css"

if command -v wofi >/dev/null 2>&1; then
    if [ -f "$CSS_PATH" ]; then
        exec wofi --show run --style "$CSS_PATH" --fork
    else
        exec wofi --show run --fork
    fi
elif command -v bemenu-run >/dev/null 2>&1; then
    exec bemenu-run
else
    echo "Error: wofi or bemenu-run is required to launch the Borderlands 4 run launcher." >&2
    exit 1
fi
