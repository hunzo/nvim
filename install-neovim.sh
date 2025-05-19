#!/bin/bash 

NVIM_VERSION=v0.11.1
NVIM_FILE_NAME=nvim-linux-x86_64

echo "Installing Neovim $NVIM_VERSION ..."
curl -OL https://github.com/neovim/neovim/releases/download/$NVIM_VERSION/$NVIM_FILE_NAME.tar.gz

sudo rm -f /usr/bin/nvim
sudo tar xzvf $NVIM_FILE_NAME.tar.gz -C /usr/bin/
sudo ln -sf /usr/bin/$NVIM_FILE_NAME/bin/nvim /usr/bin/nvim

rm -f $NVIM_FILE_NAME.tar.gz
