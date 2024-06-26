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

eval "$(/opt/homebrew/bin/brew shellenv)"

unset CONFIG_FILES

eval "$(starship init zsh)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
