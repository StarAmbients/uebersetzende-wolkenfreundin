#!/usr/bin/env bash
set -euo pipefail
python -m venv .venv && source .venv/Scripts/activate || source .venv/bin/activate
pip install -r cloud-run/requirements.txt || true
