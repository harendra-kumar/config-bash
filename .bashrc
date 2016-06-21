#!/bin/bash

function source_file () {
  test -f $1 && source $1
}

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

CONFIG_DIR=~/.config/config-bash

source_file $CONFIG_DIR/bashrc
source_file $CONFIG_DIR/bashrc.os
source_file $CONFIG_DIR/bashrc.${HOSTNAME%.*}
source_file $CONFIG_DIR/bashrc.local
