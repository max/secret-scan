#!/usr/bin/env sh

set -e

echo "Include Path $INPUT_EXCLUDE_PATH"
echo "Exclude Path $INPUT_INCLUDE_PATH"

trufflehog --include_paths 'Configuration/include_paths.txt' --exclude_paths 'Configuration/exclude_paths.txt' $GITHUB_WORKSPACE
