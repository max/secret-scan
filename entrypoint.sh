#!/usr/bin/env sh

set -e
echo "GitHub Workspace $GITHUB_WORKSPACE"
echo "Include Path $INPUT_EXCLUDE_PATH"
echo "Exclude Path $INPUT_INCLUDE_PATH"

printenv

ls

cd $GITHUB_WORKSPACE

ls

trufflehog $GITHUB_WORKSPACE
