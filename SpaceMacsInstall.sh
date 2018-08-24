#!/bin/bash

wget https://ftp.gnu.org/pub/gnu/emacs/emacs-26.1.tar.gz && tar -zxvf emacs-26.1.tar.gz && cd emacs-26.1 && ./configure --with-mailutils && make && git clone https://github.com/sy120bnr/spacemacs ~/.emacs.d
