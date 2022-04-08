#!/bin/bash
#@author Fred Brooker <git@gscloud.cz>

ABSPATH=$(readlink -f $0)
ABSDIR=$(dirname $ABSPATH)
dir="$(dirname "$0")"
. "$dir/_includes.sh"

info "Updating APT ..."

sudo dpkg --add-architecture i386
sudo apt-get update -yqq
sudo apt-get install -yq wget libc6:i386 libcurl4:i386 libgtk-3-0:i386 libcanberra-gtk3-module:i386
sudo wget https://static.red-lang.org/dl/auto/linux/red-latest -O /bin/red && sudo chmod +x /bin/red && sudo echo "q" | /bin/red

exit 0
