#!/bin/bash
#XDG_CONFIG_HOME=./ NVIM_APPNAME=./ nvim "$@"

## Resolve the absolute path of the sandbox directory
#SANDBOX_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

## Point XDG variables strictly to the sandbox folder
#XDG_CONFIG_HOME="${SANDBOX_DIR}" \
#XDG_DATA_HOME="${SANDBOX_DIR}/.data" \
#XDG_STATE_HOME="${SANDBOX_DIR}/.state" \
#nvim "$@"

# Find where test.sh is located
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Use absolute path to the sandbox folder instead of literal ./
XDG_CONFIG_HOME="$DIR" NVIM_APPNAME="./" nvim "$@"
