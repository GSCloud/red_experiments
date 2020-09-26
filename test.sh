#!/bin/bash

command -v red >/dev/null 2>&1 || { echo "Red is NOT installed!"; exit;}

echo -en "\nRed version:\n"
red --version

echo -en "\nRed Hello world:\n"
red hello.red
