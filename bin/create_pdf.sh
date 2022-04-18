#!/bin/bash
#@author Fred Brooker <git@gscloud.cz>

dir="$(dirname "$0")"
. "$dir/_includes.sh"

command -v docker >/dev/null 2>&1 || fail "Docker is NOT installed!"

find . -maxdepth 1 -type f -iname "*.md" -exec echo "{}" \; -exec docker run --rm -v "$(pwd)":/data pandoc/core:latest -f markdown -t asciidoc -i {} -o "{}.adoc" \;
find . -maxdepth 1 -type f -iname "*.adoc" -exec echo "{}" \; -exec docker run --rm -v $(pwd):/documents/ asciidoctor/docker-asciidoctor:latest asciidoctor-pdf -a allow-uri-read -d book "{}" \;

exit 0
