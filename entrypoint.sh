#!/usr/bin/env sh

set -e
echo "GitHub Workspace $GITHUB_WORKSPACE"
echo "GitHub Workspace $GITHUB_WORKSPACE"
echo "GitHub Workspace $GITHUB_WORKSPACE"
printenv

trufflehog $GITHUB_WORKSPACE
