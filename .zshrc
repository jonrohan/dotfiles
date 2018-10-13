#!/usr/bin/env bash

# shortcut to this dotfiles path is $DOTFILES
export DOTFILES=$HOME/.dotfiles

# Stash your environment variables in ~/.localrc. This means they'll stay out
# of your main dotfiles repository (which may be public, like this one), but
# you'll have access to them in your scripts.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

# Setup autocompletions in `~/.zsh`
fpath=($HOME/.zsh $fpath)
autoload -U compinit && compinit

# all of our zsh files
typeset -U CONFIG_FILES
CONFIG_FILES=($DOTFILES/config/*.sh)

# all of our shell config files
for FILE in $CONFIG_FILES
do
  source $FILE
done

unset CONFIG_FILES

# Activate pure prompt
autoload -U promptinit; promptinit
prompt pure
