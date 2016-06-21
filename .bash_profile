#!/bin/bash

function source_file () {
  test -f $1 && source $1
}

CONFIG_DIR=~/.config/config-bash

# Profile customizations
source_file $CONFIG_DIR/bash_profile
source_file $CONFIG_DIR/bash_profile.os
source_file $CONFIG_DIR/bash_profile.${HOSTNAME%.*}
source_file $CONFIG_DIR/bash_profile.local

source_file ~/.bashrc
