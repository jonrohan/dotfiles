#!/bin/sh

# Projects root, for autocompleting
export PROJECTS=$HOME/Code

# Temp directory
export TEMP=/tmp

# Ruby Gem installation location
export GEM_HOME=$HOME/.gem

# What editor I use, so I can type `e .` to open
export EDITOR='code'

# History file
export HISTFILE=~/.zsh_history

# Save more history
export HISTSIZE="100000"
export SAVEHIST="100000"

# Colors for LS
export CLICOLOR=1
export LSCOLORS='exfxcxdxbxegedabagacad'

# Don't show duplicate history entires
setopt hist_find_no_dups

# Remove unnecessary blanks from history
setopt hist_reduce_blanks

# Share history between instances
setopt share_history

# GitHub secure localhost server
export GH_SSL=1

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
