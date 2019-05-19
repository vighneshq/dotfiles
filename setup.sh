#!/usr/bin/env bash

echo "Creating symbolic links using stow."

cd ~/dotfiles
stow zsh

echo "Done"