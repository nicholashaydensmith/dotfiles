#!/bin/zsh
rsync --exclude ".git/" --exclude ".DS_Store" --exclude "README.md" --exclude "install.sh" -avh --no-perms . ~
source ~/.zshrc
