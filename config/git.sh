#!/bin/sh

setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '

export GPG_TTY=$(tty)
