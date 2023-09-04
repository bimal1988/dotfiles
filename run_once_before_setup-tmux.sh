#!/bin/bash

TMUX_CONF_DIR=$HOME/.tmux
if [ ! -e $TMUX_CONF_DIR/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm $TMUX_CONF_DIR/plugins/tpm
fi
sh $TMUX_CONF_DIR/plugins/tpm/bin/install_plugins
