#!/usr/bin/env sh

set -e

if [ -f "$INPUT_INCLUDE_PATH" ] && [[ -f "$INPUT_EXCLUDE_PATH" ]]; then
    echo "Running TruffleHog with include and exclude paths."
    trufflehog --include_paths $INPUT_INCLUDE_PATH --exclude_paths $INPUT_EXCLUDE_PATH $GITHUB_WORKSPACE
elif [ -f "$INPUT_INCLUDE_PATH" ] ; then
    echo "Running TruffleHog with include paths."
    trufflehog --include_paths $INPUT_INCLUDE_PATH $GITHUB_WORKSPACE
elif [ -f "$INPUT_EXCLUDE_PATH" ] ; then
    echo "Running TruffleHog with exclude paths."
    trufflehog --exclude_paths $INPUT_EXCLUDE_PATH $GITHUB_WORKSPACE
else
    echo "Running TruffleHog without path filters."
    trufflehog $GITHUB_WORKSPACE
fi