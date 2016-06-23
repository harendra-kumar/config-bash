#!/bin/bash

CONFIG_DIR=~/.config

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

function source_dir () {
  if test -d $1
  then
    for i in `echo ${1}/*`
    do
      source $i
    done
  fi
}

# Modular bashrc customizations
source_dir $CONFIG_DIR/bashrc.d
