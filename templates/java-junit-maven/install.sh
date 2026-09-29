#!/usr/bin/env bash
set -euo pipefail

# Warm the local Maven repository before the workshop starts. A cold ~/.m2
# downloads the compiler, Surefire, PMD and JUnit on first use, which is the
# slowest possible moment to discover a proxy or a blocked mirror. This fetches
# the bulk of it; Surefire resolves its JUnit Platform launcher only when tests
# actually run, so the verify step below still pulls a few hundred kB.
mvn -q -B dependency:go-offline
