#!/bin/sh

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..='cd ..'
alias ...='cd ../..'

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

# List files shortcuts
alias ls='ls -AFG'
alias ll='ls -laG'

# Alias rm to trash-cli, it's safer this way
alias rm=trash

# Print $PATH on separate lines
alias path='printf "%b\n" "${PATH//:/\\n}"'

alias c='source ~/.zsh/c'

alias e='open-editor'
