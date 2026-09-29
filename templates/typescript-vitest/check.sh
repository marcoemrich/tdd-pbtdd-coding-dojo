#!/usr/bin/env bash
# Prerequisite checks. setup.sh runs this before copying any files, so a
# failed check leaves the clone untouched and setup can simply be rerun.
set -euo pipefail

for tool in node npm; do
  command -v "$tool" >/dev/null || {
    echo "Missing $tool. See templates/typescript-vitest/SETUP.md for prerequisites." >&2
    exit 1
  }
done

# Vitest 5 needs Node.js 22.12 or higher. Check up front; otherwise the first
# test run fails with an error that does not mention the Node version.
node -e '
const [major, minor] = process.versions.node.split(".").map(Number);
process.exit(major > 22 || (major === 22 && minor >= 12) ? 0 : 1);
' || {
  echo "Node.js $(node --version) is too old; 22.12 or higher is required." >&2
  echo "See templates/typescript-vitest/SETUP.md for prerequisites." >&2
  exit 1
}
