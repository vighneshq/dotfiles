#!/usr/bin/env bash

echo "Creating symbolic links using stow"

declare -a links=("zsh" "profile")

cd ~/dotfiles

for item in "${links[@]}"
do
   echo "Stowing $item"
   stow $item
done

echo "Done"

echo "Installing cheat.sh"

mkdir -p ~/bin/
curl https://cht.sh/:cht.sh > ~/bin/cht.sh
chmod +x ~/bin/cht.sh

echo "Done"
