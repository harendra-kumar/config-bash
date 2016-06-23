#!/bin/bash

CONFIG_DIR=~/.config

function source_file () {
  test -f $1 && source $1
}

function source_dir () {
  if test -d $1
  then
    for i in `echo ${1}/*`
    do
      source $i
    done
  fi
}

# Modular profile customizations
source_dir $CONFIG_DIR/bash_profile.d
source_file ~/.bashrc
