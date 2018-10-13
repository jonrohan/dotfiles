# Projects root, for autocompleting
export PROJECTS=$HOME/Code

# What editor I use, so I can type `e .` to open
export EDITOR='code'

# History file
export HISTFILE=~/.zsh_history

# Save more history
export HISTSIZE="100000"
export SAVEHIST="100000"

# Don't show duplicate history entires
setopt hist_find_no_dups

# Remove unnecessary blanks from history
setopt hist_reduce_blanks

# Share history between instances
setopt share_history
