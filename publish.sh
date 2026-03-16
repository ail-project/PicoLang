#!/usr/bin/env bash
set -euo pipefail

# Build distribution artifacts into ./dist
uv build

# Publish to PyPI.
# Authentication options:
#   - export UV_PUBLISH_TOKEN="pypi-..."
#   - or pass --token / --username+--password directly
uv publish
