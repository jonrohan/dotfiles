# Jon Rohan's .dotfiles

The goal of this project is to have a set of files that I can quickly setup my development environment on a new machine.

This setup is heavily inspired by [MikeMcQuaid's dotfiles](https://github.com/MikeMcQuaid/dotfiles). This is because of [strap](https://github.com/MikeMcQuaid/strap) also written by Mike. The setup of these dotfiles relies on strap'ing your machine first, then installing the dotfiles.

## Assumptions

There are a few assumptions made on the system and what tools I use.

1. First assumption is this is macOS only. It mostly could be adapted for other OSs, however I don't typically use anything else so I don't have motivation to keep up more than one.
2. Default shell is `zsh`. zsh feels more extensible to me, so I enjoy using it.
3. Editor is VSCode.
4. Terminal is iTerm2.

## Installation

Clone the repository

```sh
git clone https://github.com/jonrohan/dotfiles.git ~/.dotfiles
cd ~/.dotfiles/
```

Run the `script/strap` script. This will pull down the latest [strap.sh](https://github.com/MikeMcQuaid/strap) script and bootstrap your machine for development. Make sure you complete any pre-requisites from that project.

While strap is running, it will check if you have a `/dotfiles/` repository on GitHub, clone the repository, and run `script/setup`. This moves everything into place.

## LICENSE

[GNU GPLv3](./LICENSE) &copy; Jon Rohan
