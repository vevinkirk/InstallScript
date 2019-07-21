#!/bin/zsh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting && echo "source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
