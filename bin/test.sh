#!/bin/bash
#@author Filip Oščádal <oscadal@gscloud.cz>

ABSPATH=$(readlink -f $0)
ABSDIR=$(dirname $ABSPATH)
dir="$(dirname "$0")"
. "$dir/_includes.sh"

command -v red >/dev/null 2>&1 || fail "Docker is NOT installed!"

info "Red version: $(red --version)"
info "Red 'Hello World' example: $(red hello.red)"

info "Compiling:"

red -c hello.red

info "Run test:"

./hello

exit 0
