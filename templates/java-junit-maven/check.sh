#!/usr/bin/env bash
# Prerequisite checks. setup.sh runs this before copying any files, so a
# failed check leaves the clone untouched and setup can simply be rerun.
set -euo pipefail

for tool in java mvn; do
  command -v "$tool" >/dev/null || {
    echo "Missing $tool. See templates/java-junit-maven/SETUP.md for prerequisites." >&2
    exit 1
  }
done
