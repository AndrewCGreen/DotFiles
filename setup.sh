#!/bin/bash

"sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -sv ${BASEDIR}/vimrc ~/.vimrc
ln -sv ${BASEDIR}/vim/ ~/.vim

# zsh
ln -sv ${BASEDIR}/zshrc ~/.zshrc

