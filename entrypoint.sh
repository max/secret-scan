#!/usr/bin/env sh

set -e
echo "GitHub Workspace $GITHUB_WORKSPACE"
echo "Include Path $INPUT_EXCLUDE_PATH"
echo "Exclude Path $INPUT_INCLUDE_PATH"

trufflehog --include_paths 'Configuration/include-patterns.txt' --exclude_paths 'Configuration/exclude-patterns.txt' $GITHUB_WORKSPACE
