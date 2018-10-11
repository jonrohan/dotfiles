# shortcut to this dotfiles path is $DOTFILES
export DOTFILES=$HOME/.dotfiles

# Stash your environment variables in ~/.localrc. This means they'll stay out
# of your main dotfiles repository (which may be public, like this one), but
# you'll have access to them in your scripts.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

fpath=(~/.zsh $fpath)

# all of our zsh files
typeset -U CONFIG_FILES
CONFIG_FILES=($DOTFILES/config/*.sh)

# all of our shell config files
for FILE in $CONFIG_FILES
do
  source $FILE
done

# History file
export HISTFILE=~/.zsh_history

# Don't show duplicate history entires
setopt hist_find_no_dups

# Remove unnecessary blanks from history
setopt hist_reduce_blanks

# Share history between instances
setopt share_history

#
autoload -U promptinit; promptinit

# Default to pure
prompt pure

unset CONFIG_FILES
