#!/usr/bin/env bash

readonly GREEN="\[\e[0;32m\]"
readonly CYAN="\[\e[0;36m\]"
readonly RESET="\[\e[0m\]"

SCRIPT_DIR=$(cd $(dirname $0); pwd)

export PATH=$PATH:`pwd`/app/bin
export PS1="${GREEN}\u${RESET}:${CYAN}\W${RESET}$ "
