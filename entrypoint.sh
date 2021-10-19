#!/usr/bin/env sh

set -e

# https://github.com/koalaman/shellcheck/wiki/Sc2086#exceptions
# https://wiki.bash-hackers.org/syntax/pe#use_an_alternate_value
# https://unix.stackexchange.com/questions/131766/why-does-my-shell-script-choke-on-whitespace-or-other-special-characters/131767#131767
# Prepare the command
set -- trufflehog
set -- "$@" ${INPUT_INCLUDE_PATH:+--include_paths "$INPUT_INCLUDE_PATH"}
set -- "$@" ${INPUT_EXCLUDE_PATH:+--exclude_paths "$INPUT_EXCLUDE_PATH"}
set -- "$@" ${INPUT_ALLOWED_PATTERNS:+--allow "$INPUT_ALLOWED_PATTERNS"}
set -- "$@" "$GITHUB_WORKSPACE"

# Print the command
cat << COMMAND > /dev/stdout
Running truffleHog with command:
$@
COMMAND

# Run the command
"$@"
