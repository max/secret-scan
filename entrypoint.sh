#!/usr/bin/env sh

set -e

echo "Welcome to the action: Secret Scan! TruffleHog will run shortly. More information about TruffleHog is available at: https://github.com/dxa4481/truffleHog"

trufflehog --include_paths $INPUT_EXCLUDE_PATH --exclude_paths $INPUT_EXCLUDE_PATH $GITHUB_WORKSPACE
