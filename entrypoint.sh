#!/usr/bin/env sh

set -e

echo "Include Path $INPUT_EXCLUDE_PATH"
echo "Exclude Path $INPUT_INCLUDE_PATH"

trufflehog $GITHUB_WORKSPACE
