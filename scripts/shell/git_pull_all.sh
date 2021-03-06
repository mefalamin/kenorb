#!/bin/sh
# Script to pull all git repositories to the recent version.
ROOT=$(git rev-parse --show-toplevel 2> /dev/null)
export GIT_EDITOR=true
find "$ROOT" -name .git -type d -execdir git pull -v ';'
