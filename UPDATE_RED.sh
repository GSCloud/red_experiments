#!/bin/bash

sudo wget https://static.red-lang.org/dl/auto/linux/red-latest -O /bin/red && sudo chmod +x /bin/red && sudo echo "q" | /bin/red
red --version
