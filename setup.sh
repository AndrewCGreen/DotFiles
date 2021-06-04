#!/bin/bash

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -sf ${BASEDIR}/vimrc ~/.vimrc
ln -sf ${BASEDIR}/vim/ ~/.vim

# zsh
ln -sf ${BASEDIR}/zshrc ~/.zshrc

# terminator
ln -sf ${BASEDIR}/terminatorconfig ~/.config/terminator/config
