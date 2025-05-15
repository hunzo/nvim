#!/bin/bash


NVIM_VERSION=v0.11.1
NVIM_FILE_NAME=nvim-linux-x86_64

# -- clear old neovim
rm -rf ~/.config/nvim

# optional but recommended
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
sudo rm -rf /usr/bin/nvim*

# -- add .bashrc
sh -c "cat >> ~/.bashrc << EOF
export EDITOR=nvim
alias vim=nvim
set -o vi
EOF"

# -- install neovim
curl -OL https://github.com/neovim/neovim/releases/download/$NVIM_VERSION/$NVIM_FILE_NAME.tar.gz

sudo rm /usr/bin/nvim
sudo tar xzvf $NVIM_FILE_NAME.tar.gz -C /usr/bin/
sudo ln -s /usr/bin/$NVIM_FILE_NAME/bin/nvim /usr/bin/nvim

rm $NVIM_FILE_NAME.tar.gz

