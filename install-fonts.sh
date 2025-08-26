#!/bin/bash

sudo mkdir -p /usr/share/fonts/myfonts
sudo cp -r ./fonts/* /usr/share/fonts/myfonts/
sudo fc-cache -f -v

# chekc font
# fc-list | grep "font-name"
