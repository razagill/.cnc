#!/bin/zsh

#### Some echo helpers to use for info/warning/error etc

col_green='\033[00;32m'
col_red='\033[00;31m'
col_yellow='\033[00;33m'
col_cyan='\033[00;36m'
col_reset='\033[0m'

check_mark=✓
cross_mark=×

function info() {
  echo -e "\n$col_green(c&c) $check_mark ::: $1 $col_reset\n"
}

function err() {
  echo -e "\n$col_red(c&c) $cross_mark ::: $1 $col_reset\n"
}

function running() {
  echo -e "\n$col_cyan(c&c) => ::: $1 $col_reset\n"
}
