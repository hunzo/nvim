#!/bin/bash

sudo cp -r ./fonts/th-sarabun/ /usr/share/fonts/
sudo fc-cache -f -v

# chekc font
# fc-list | grep "font-name"
