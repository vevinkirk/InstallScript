#!/bin/bash

sudo sed -i -- 's/#deb-src/deb-src/g' /etc/apt/sources.list && sudo sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list && sudo apt-get update && sudo apt-get build-dep emacs25 && sudo apt-get install build-essential && wget https://ftp.gnu.org/pub/gnu/emacs/emacs-26.1.tar.gz && tar -zxvf emacs-26.1.tar.gz && cd emacs-26.1 && ./configure --with-mailutils && make && sudo make install &&  git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d  && mv emacs-26.1 ~/
