# Setup paths
remove_from_path() {
  [ -d "$1" ] || return
  # Doesn't work for first item in the PATH but I don't care.
  export PATH=${PATH//:$1/}
}

add_to_path_start() {
  [ -d "$1" ] || return
  remove_from_path "$1"
  export PATH="$1:$PATH"
}

add_to_path_end() {
  [ -d "$1" ] || return
  remove_from_path "$1"
  export PATH="$PATH:$1"
}

force_add_to_path_start() {
  remove_from_path "$1"
  export PATH="$1:$PATH"
}

quiet_which() {
  which "$1" &>/dev/null
}

# dotfiles path items
add_to_path_start "$DOTFILES/bin"
add_to_path_start "$DOTFILES/node_modules/.bin"

add_to_path_start "/usr/local/sbin"
add_to_path_start "/usr/local/bin"

# relative to project
add_to_path_start "./node_modules/.bin"
add_to_path_start "./bin"
